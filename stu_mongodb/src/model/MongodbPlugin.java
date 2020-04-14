package model;

import com.jfinal.plugin.IPlugin;
import com.mongodb.MongoClient;

public class MongodbPlugin implements IPlugin {
    private static final String DEFAULT_HOST = "127.0.0.1";
    private static final int DEFAUL_PORT = 27017;
    private MongoClient client;
    private String host;
    private int port;
    private String database;

    public MongodbPlugin(String database) {
        this.host = "127.0.0.1";
        this.port = 27017;
        this.database = database;
    }

    public boolean start(){
        this.client = new MongoClient(this.host, this.port);
        MongoKit.init(this.client, this.database);
        System.out.print("connect success!!!!!!!!");
        return true;
    }

    public boolean stop() {
        if (this.client != null) {
            this.client.close();
        }

        return true;
    }
}


