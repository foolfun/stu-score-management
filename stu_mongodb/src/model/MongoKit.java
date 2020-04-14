package model;


import com.jfinal.plugin.activerecord.Record;
import com.mongodb.BasicDBObject;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;
import org.bson.Document;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class MongoKit {

    private static MongoClient client;
    private static MongoDatabase defaultDb;

    public MongoKit() {
    }

    public static void init(MongoClient client,String  database) {
        client = client;
        defaultDb = client.getDatabase(database);
    }

    public static void updateFirst(String collectionName, Map<String,Object> q, Map<String,Object> c){
        getCollection(collectionName).updateOne(Filters.eq("sid", q.get("sid")), new Document("$set",new Document(c)));
    }

    public static void remove(String collectionName, String key,String value) throws JSONException {
        Map<String, String> map=MongoKit.find(collectionName,key,value);
        if (map!=null){
            getCollection(collectionName).deleteOne(new Document(key,value));
        }
    }

    public static void save(String collectionName, Document document) {
        getCollection(collectionName).insertOne(document);
    }
    public static Map<String, String> findService(String iter_string,String key1,String key2) throws JSONException {
        JSONObject jsob  = new JSONObject(iter_string);
        //System.out.println(jsob);
        Map<String,String> map = new HashMap<>();
        String math = jsob.getString(key1);
        String english = jsob.getString(key2);
        map.put("math", math);
        map.put("english", english);
        return map;
    }

    public static Map<String, String> find(String collectionName,String key,String value) throws JSONException {
        FindIterable<Document> iter  =getCollection(collectionName).find(new Document(key,value));
        MongoCursor<Document> mongoCursor = iter.iterator();
        if(!mongoCursor.hasNext()){
            return null;
        }else{
            String  iter_string = iter.first().toJson().toString();
            return findService(iter_string,"math","english");
       }

    }

//    public static  Map<String,String> findAll(String collectionName) throws JSONException {
//        FindIterable<Document> iter  =getCollection(collectionName).find();
//        Map<String,String> mapFindAll=null;
//        MongoCursor<Document> mongoCursor = iter.iterator();
//        while(mongoCursor.hasNext()){
//            String iter_string = mongoCursor.next().toString();
//            mapFindAll=findService(iter_string,"math","english");
//        }
//        return mapFindAll;
//    }

    private static void sort(Map<String, Object> sort, DBCursor dbCursor) {
        if (sort != null) {
            DBObject dbo = new BasicDBObject();
            Set<Map.Entry<String, Object>> entrySet = sort.entrySet();
            Iterator i = entrySet.iterator();
            while(i.hasNext()) {
                Map.Entry<String, Object> entry = (Map.Entry)i.next();
                String key = (String)entry.getKey();
                Object val = entry.getValue();
                dbo.put(key, "asc".equalsIgnoreCase(val + "") ? 1 : -1);
            }
            dbCursor.sort(dbo);
        }

    }


    public static Record toRecord(DBObject dbObject) {
        Record record = new Record();
        record.setColumns(dbObject.toMap());
        return record;
    }

    public static MongoCollection<Document> getCollection(String name) {
        return defaultDb.getCollection(name);
    }


    private static BasicDBObject toDBObject(Map<String, Object> map) {
        BasicDBObject dbObject = new BasicDBObject();
        Set<Map.Entry<String, Object>> entrySet = map.entrySet();
        Iterator i$ = entrySet.iterator();

        while(i$.hasNext()) {
            Map.Entry<String, Object> entry = (Map.Entry)i$.next();
            String key = (String)entry.getKey();
            Object val = entry.getValue();
            dbObject.append(key, val);
        }

        return dbObject;
    }

    private static BasicDBObject toDbObject(Record record) {
        BasicDBObject object = new BasicDBObject();
        Iterator i = record.getColumns().entrySet().iterator();

        while(i.hasNext()) {
            Map.Entry<String, Object> e = (Map.Entry)i.next();
            object.append((String)e.getKey(), e.getValue());
        }

        return object;
    }
}

