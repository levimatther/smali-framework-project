.class public Lcom/tcl/netlibrary/service/NetService;
.super Ljava/lang/Object;
.source "NetService.java"

# interfaces
.implements La/d/a/g/a;


# static fields
.field public static volatile mInstance:La/d/a/g/a;


# instance fields
.field public apiService:La/d/a/b/a;

.field public apiVersion:Ljava/lang/String;

.field public baseUrl:Ljava/lang/String;

.field public gson:Lcom/google/gson/Gson;

.field public serverRoot:Ljava/lang/String;

.field public storeName:Ljava/lang/String;

.field public tel:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 3
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method private createApiService(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, La/d/a/a;

    invoke-direct {v0, p1}, La/d/a/a;-><init>(Ljava/lang/String;)V

    .line 2
    const-class p1, La/d/a/b/a;

    invoke-virtual {v0, p1}, La/d/a/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La/d/a/b/a;

    iput-object p1, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    return-void
.end method

.method public static getInstance()La/d/a/g/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/tcl/netlibrary/service/NetService;->mInstance:La/d/a/g/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/tcl/netlibrary/service/NetService;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/tcl/netlibrary/service/NetService;->mInstance:La/d/a/g/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/tcl/netlibrary/service/NetService;

    invoke-direct {v1}, Lcom/tcl/netlibrary/service/NetService;-><init>()V

    sput-object v1, Lcom/tcl/netlibrary/service/NetService;->mInstance:La/d/a/g/a;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/tcl/netlibrary/service/NetService;->mInstance:La/d/a/g/a;

    return-object v0
.end method


# virtual methods
.method public activateSMSDirectLink()Lretrofit2/Call;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tcl/netlibrary/entity/Attribute;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/Attribute;-><init>()V

    const-string v1, "SMSDirectLink"

    .line 2
    iput-object v1, v0, Lcom/tcl/netlibrary/entity/Attribute;->name:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    const-string v2, "true"

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcom/tcl/netlibrary/entity/AttributeList;

    invoke-direct {v1}, Lcom/tcl/netlibrary/entity/AttributeList;-><init>()V

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/tcl/netlibrary/entity/AttributeList;->attribute:Ljava/util/List;

    .line 8
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v0, Lcom/tcl/netlibrary/entity/VvmserviceProfile;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/VvmserviceProfile;-><init>()V

    .line 11
    iput-object v1, v0, Lcom/tcl/netlibrary/entity/VvmserviceProfile;->attributes:Lcom/tcl/netlibrary/entity/AttributeList;

    .line 13
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "vvmserviceProfile"

    .line 14
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/json;charset=UTF-8"

    .line 16
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v7

    .line 18
    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v5, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v6, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, La/d/a/b/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v0

    return-object v0
.end method

.method public activateVVM()Lretrofit2/Call;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tcl/netlibrary/entity/Attribute;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/Attribute;-><init>()V

    const-string v1, "VVMOn"

    .line 2
    iput-object v1, v0, Lcom/tcl/netlibrary/entity/Attribute;->name:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    const-string v2, "true"

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcom/tcl/netlibrary/entity/AttributeList;

    invoke-direct {v1}, Lcom/tcl/netlibrary/entity/AttributeList;-><init>()V

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/tcl/netlibrary/entity/AttributeList;->attribute:Ljava/util/List;

    .line 8
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v0, Lcom/tcl/netlibrary/entity/VvmserviceProfile;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/VvmserviceProfile;-><init>()V

    .line 11
    iput-object v1, v0, Lcom/tcl/netlibrary/entity/VvmserviceProfile;->attributes:Lcom/tcl/netlibrary/entity/AttributeList;

    .line 13
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "vvmserviceProfile"

    .line 14
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/json;charset=UTF-8"

    .line 16
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v7

    .line 18
    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v5, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v6, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, La/d/a/b/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v0

    return-object v0
.end method

.method public activeGreeting(Ljava/lang/String;)Lretrofit2/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, La/d/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method

.method public bulkDeleteObjects(Ljava/util/List;)Lretrofit2/Call;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/tcl/netlibrary/bean/BulkResponseListBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    new-instance v2, Lcom/tcl/netlibrary/entity/ObjectReference;

    invoke-direct {v2}, Lcom/tcl/netlibrary/entity/ObjectReference;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tcl/netlibrary/service/NetService;->baseUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const-string v1, "%s/nms/v1/ums/%s/objects/%s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/tcl/netlibrary/entity/ObjectReference;->resourceURL:Ljava/net/URI;

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lcom/tcl/netlibrary/entity/BulkDelete;

    invoke-direct {p1}, Lcom/tcl/netlibrary/entity/BulkDelete;-><init>()V

    .line 10
    new-instance v1, Lcom/tcl/netlibrary/entity/ObjectReferenceList;

    invoke-direct {v1}, Lcom/tcl/netlibrary/entity/ObjectReferenceList;-><init>()V

    iput-object v1, p1, Lcom/tcl/netlibrary/entity/BulkDelete;->objects:Lcom/tcl/netlibrary/entity/ObjectReferenceList;

    .line 11
    iput-object v0, v1, Lcom/tcl/netlibrary/entity/ObjectReferenceList;->objectReference:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "bulkDelete"

    .line 14
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p1, p0, Lcom/tcl/netlibrary/service/NetService;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/json;charset=UTF-8"

    .line 16
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v6

    .line 18
    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v5, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, La/d/a/b/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method

.method public bulkMarkRead(Ljava/util/List;)Lretrofit2/Call;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/tcl/netlibrary/bean/BulkResponseListBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    new-instance v2, Lcom/tcl/netlibrary/entity/ObjectReference;

    invoke-direct {v2}, Lcom/tcl/netlibrary/entity/ObjectReference;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tcl/netlibrary/service/NetService;->baseUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const-string v1, "%s/nms/v1/ums/%s/objects/%s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/tcl/netlibrary/entity/ObjectReference;->resourceURL:Ljava/net/URI;

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lcom/tcl/netlibrary/entity/BulkUpdate;

    invoke-direct {p1}, Lcom/tcl/netlibrary/entity/BulkUpdate;-><init>()V

    .line 10
    new-instance v1, Lcom/tcl/netlibrary/entity/ObjectReferenceList;

    invoke-direct {v1}, Lcom/tcl/netlibrary/entity/ObjectReferenceList;-><init>()V

    iput-object v1, p1, Lcom/tcl/netlibrary/entity/BulkUpdate;->objects:Lcom/tcl/netlibrary/entity/ObjectReferenceList;

    .line 11
    iput-object v0, v1, Lcom/tcl/netlibrary/entity/ObjectReferenceList;->objectReference:Ljava/util/List;

    .line 12
    sget-object v0, Lcom/tcl/netlibrary/entity/OperationEnum;->AddFlag:Lcom/tcl/netlibrary/entity/OperationEnum;

    iput-object v0, p1, Lcom/tcl/netlibrary/entity/BulkUpdate;->operation:Lcom/tcl/netlibrary/entity/OperationEnum;

    .line 13
    new-instance v0, Lcom/tcl/netlibrary/entity/FlagList;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/FlagList;-><init>()V

    iput-object v0, p1, Lcom/tcl/netlibrary/entity/BulkUpdate;->flags:Lcom/tcl/netlibrary/entity/FlagList;

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tcl/netlibrary/entity/FlagList;->flag:Ljava/util/List;

    .line 15
    iget-object v0, p1, Lcom/tcl/netlibrary/entity/BulkUpdate;->flags:Lcom/tcl/netlibrary/entity/FlagList;

    iget-object v0, v0, Lcom/tcl/netlibrary/entity/FlagList;->flag:Ljava/util/List;

    const-string v1, "\\Seen"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "bulkUpdate"

    .line 18
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object p1, p0, Lcom/tcl/netlibrary/service/NetService;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/json;charset=UTF-8"

    .line 20
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v6

    .line 22
    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v5, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, La/d/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method

.method public bulkMarkUnread(Ljava/util/List;)Lretrofit2/Call;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/tcl/netlibrary/bean/BulkResponseListBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    new-instance v2, Lcom/tcl/netlibrary/entity/ObjectReference;

    invoke-direct {v2}, Lcom/tcl/netlibrary/entity/ObjectReference;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tcl/netlibrary/service/NetService;->baseUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const-string v1, "%s/nms/v1/ums/%s/objects/%s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/tcl/netlibrary/entity/ObjectReference;->resourceURL:Ljava/net/URI;

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lcom/tcl/netlibrary/entity/BulkUpdate;

    invoke-direct {p1}, Lcom/tcl/netlibrary/entity/BulkUpdate;-><init>()V

    .line 10
    new-instance v1, Lcom/tcl/netlibrary/entity/ObjectReferenceList;

    invoke-direct {v1}, Lcom/tcl/netlibrary/entity/ObjectReferenceList;-><init>()V

    iput-object v1, p1, Lcom/tcl/netlibrary/entity/BulkUpdate;->objects:Lcom/tcl/netlibrary/entity/ObjectReferenceList;

    .line 11
    iput-object v0, v1, Lcom/tcl/netlibrary/entity/ObjectReferenceList;->objectReference:Ljava/util/List;

    .line 12
    sget-object v0, Lcom/tcl/netlibrary/entity/OperationEnum;->RemoveFlag:Lcom/tcl/netlibrary/entity/OperationEnum;

    iput-object v0, p1, Lcom/tcl/netlibrary/entity/BulkUpdate;->operation:Lcom/tcl/netlibrary/entity/OperationEnum;

    .line 13
    new-instance v0, Lcom/tcl/netlibrary/entity/FlagList;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/FlagList;-><init>()V

    iput-object v0, p1, Lcom/tcl/netlibrary/entity/BulkUpdate;->flags:Lcom/tcl/netlibrary/entity/FlagList;

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tcl/netlibrary/entity/FlagList;->flag:Ljava/util/List;

    .line 15
    iget-object v0, p1, Lcom/tcl/netlibrary/entity/BulkUpdate;->flags:Lcom/tcl/netlibrary/entity/FlagList;

    iget-object v0, v0, Lcom/tcl/netlibrary/entity/FlagList;->flag:Ljava/util/List;

    const-string v1, "\\Seen"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "bulkUpdate"

    .line 18
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object p1, p0, Lcom/tcl/netlibrary/service/NetService;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/json;charset=UTF-8"

    .line 20
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v6

    .line 22
    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v5, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, La/d/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method

.method public deactivateSMSDirectLink()Lretrofit2/Call;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tcl/netlibrary/entity/Attribute;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/Attribute;-><init>()V

    const-string v1, "SMSDirectLink"

    .line 2
    iput-object v1, v0, Lcom/tcl/netlibrary/entity/Attribute;->name:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    const-string v2, "false"

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcom/tcl/netlibrary/entity/AttributeList;

    invoke-direct {v1}, Lcom/tcl/netlibrary/entity/AttributeList;-><init>()V

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/tcl/netlibrary/entity/AttributeList;->attribute:Ljava/util/List;

    .line 8
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v0, Lcom/tcl/netlibrary/entity/VvmserviceProfile;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/VvmserviceProfile;-><init>()V

    .line 11
    iput-object v1, v0, Lcom/tcl/netlibrary/entity/VvmserviceProfile;->attributes:Lcom/tcl/netlibrary/entity/AttributeList;

    .line 13
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "vvmserviceProfile"

    .line 14
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/json;charset=UTF-8"

    .line 16
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v7

    .line 18
    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v5, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v6, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, La/d/a/b/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v0

    return-object v0
.end method

.method public deactivateVVM()Lretrofit2/Call;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tcl/netlibrary/entity/Attribute;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/Attribute;-><init>()V

    const-string v1, "VVMOn"

    .line 2
    iput-object v1, v0, Lcom/tcl/netlibrary/entity/Attribute;->name:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    const-string v2, "false"

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcom/tcl/netlibrary/entity/AttributeList;

    invoke-direct {v1}, Lcom/tcl/netlibrary/entity/AttributeList;-><init>()V

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/tcl/netlibrary/entity/AttributeList;->attribute:Ljava/util/List;

    .line 8
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v0, Lcom/tcl/netlibrary/entity/VvmserviceProfile;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/VvmserviceProfile;-><init>()V

    .line 11
    iput-object v1, v0, Lcom/tcl/netlibrary/entity/VvmserviceProfile;->attributes:Lcom/tcl/netlibrary/entity/AttributeList;

    .line 13
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "vvmserviceProfile"

    .line 14
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/json;charset=UTF-8"

    .line 16
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v7

    .line 18
    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v5, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v6, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, La/d/a/b/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v0

    return-object v0
.end method

.method public deactiveGreeting(Ljava/lang/String;)Lretrofit2/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, La/d/a/b/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method

.method public deleteEmailAddress()Lretrofit2/Call;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tcl/netlibrary/entity/Attribute;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/Attribute;-><init>()V

    const-string v1, "EmailAddress"

    .line 2
    iput-object v1, v0, Lcom/tcl/netlibrary/entity/Attribute;->name:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    .line 5
    new-instance v1, Lcom/tcl/netlibrary/entity/AttributeList;

    invoke-direct {v1}, Lcom/tcl/netlibrary/entity/AttributeList;-><init>()V

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/tcl/netlibrary/entity/AttributeList;->attribute:Ljava/util/List;

    .line 7
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v0, Lcom/tcl/netlibrary/entity/VvmserviceProfile;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/VvmserviceProfile;-><init>()V

    .line 10
    iput-object v1, v0, Lcom/tcl/netlibrary/entity/VvmserviceProfile;->attributes:Lcom/tcl/netlibrary/entity/AttributeList;

    .line 12
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "vvmserviceProfile"

    .line 13
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/json;charset=UTF-8"

    .line 15
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v7

    .line 17
    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v5, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v6, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, La/d/a/b/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v0

    return-object v0
.end method

.method public deleteFolder(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->uid:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, p1}, La/d/a/b/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public discoveryFolderByBasisOfLastModifiedTimestamp(ILjava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lcom/tcl/netlibrary/entity/FolderList;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/tcl/netlibrary/entity/Reference;

    invoke-direct {p2}, Lcom/tcl/netlibrary/entity/Reference;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->baseUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->uid:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s/ nms/v1/Sync/%s/folders/DefaultFolderId"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, p2, Lcom/tcl/netlibrary/entity/Reference;->resourceURL:Ljava/net/URI;

    const-string v0, "//Default"

    .line 4
    iput-object v0, p2, Lcom/tcl/netlibrary/entity/Reference;->path:Ljava/lang/String;

    .line 6
    new-instance p2, Lcom/tcl/netlibrary/entity/SortCriterion;

    invoke-direct {p2}, Lcom/tcl/netlibrary/entity/SortCriterion;-><init>()V

    .line 7
    sget-object v0, Lcom/tcl/netlibrary/entity/SortTypeEnum;->Date:Lcom/tcl/netlibrary/entity/SortTypeEnum;

    iput-object v0, p2, Lcom/tcl/netlibrary/entity/SortCriterion;->type:Lcom/tcl/netlibrary/entity/SortTypeEnum;

    .line 8
    sget-object v0, Lcom/tcl/netlibrary/entity/SortOrderEnum;->Descending:Lcom/tcl/netlibrary/entity/SortOrderEnum;

    iput-object v0, p2, Lcom/tcl/netlibrary/entity/SortCriterion;->order:Lcom/tcl/netlibrary/entity/SortOrderEnum;

    .line 10
    new-instance v0, Lcom/tcl/netlibrary/entity/SortCriteria;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/SortCriteria;-><init>()V

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tcl/netlibrary/entity/SortCriteria;->criterion:Ljava/util/List;

    .line 12
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance p2, Lcom/tcl/netlibrary/entity/SelectionCriteria;

    invoke-direct {p2}, Lcom/tcl/netlibrary/entity/SelectionCriteria;-><init>()V

    .line 15
    iput p1, p2, Lcom/tcl/netlibrary/entity/SelectionCriteria;->maxEntries:I

    .line 16
    iput-object v0, p2, Lcom/tcl/netlibrary/entity/SelectionCriteria;->sortCriteria:Lcom/tcl/netlibrary/entity/SortCriteria;

    .line 18
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "selectionCriteria"

    .line 19
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object p2, p0, Lcom/tcl/netlibrary/service/NetService;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "application/json;charset=UTF-8"

    .line 21
    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 23
    iget-object p2, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->uid:Ljava/lang/String;

    invoke-interface {p2, v0, v1, p1}, La/d/a/b/a;->b(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public discoveryFolderByScopeOnLastDepositTimestamp(ILjava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lcom/tcl/netlibrary/entity/FolderList;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/tcl/netlibrary/entity/Reference;

    invoke-direct {p2}, Lcom/tcl/netlibrary/entity/Reference;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->baseUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->uid:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%s/ nms/%s/Sync/%s/folders/DynamicFolderId"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, p2, Lcom/tcl/netlibrary/entity/Reference;->resourceURL:Ljava/net/URI;

    const-string v0, "//Default"

    .line 4
    iput-object v0, p2, Lcom/tcl/netlibrary/entity/Reference;->path:Ljava/lang/String;

    .line 6
    new-instance p2, Lcom/tcl/netlibrary/entity/SortCriterion;

    invoke-direct {p2}, Lcom/tcl/netlibrary/entity/SortCriterion;-><init>()V

    .line 7
    sget-object v0, Lcom/tcl/netlibrary/entity/SortTypeEnum;->Date:Lcom/tcl/netlibrary/entity/SortTypeEnum;

    iput-object v0, p2, Lcom/tcl/netlibrary/entity/SortCriterion;->type:Lcom/tcl/netlibrary/entity/SortTypeEnum;

    .line 8
    sget-object v0, Lcom/tcl/netlibrary/entity/SortOrderEnum;->Descending:Lcom/tcl/netlibrary/entity/SortOrderEnum;

    iput-object v0, p2, Lcom/tcl/netlibrary/entity/SortCriterion;->order:Lcom/tcl/netlibrary/entity/SortOrderEnum;

    .line 10
    new-instance v0, Lcom/tcl/netlibrary/entity/SortCriteria;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/SortCriteria;-><init>()V

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tcl/netlibrary/entity/SortCriteria;->criterion:Ljava/util/List;

    .line 12
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance p2, Lcom/tcl/netlibrary/entity/SelectionCriteria;

    invoke-direct {p2}, Lcom/tcl/netlibrary/entity/SelectionCriteria;-><init>()V

    .line 15
    iput p1, p2, Lcom/tcl/netlibrary/entity/SelectionCriteria;->maxEntries:I

    .line 16
    iput-object v0, p2, Lcom/tcl/netlibrary/entity/SelectionCriteria;->sortCriteria:Lcom/tcl/netlibrary/entity/SortCriteria;

    .line 18
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "selectionCriteria"

    .line 19
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object p2, p0, Lcom/tcl/netlibrary/service/NetService;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "application/json;charset=UTF-8"

    .line 21
    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 23
    iget-object p2, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->uid:Ljava/lang/String;

    invoke-interface {p2, v0, v1, p1}, La/d/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public discoveryRootFolder(ILjava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lcom/tcl/netlibrary/entity/FolderList;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tcl/netlibrary/entity/SearchCriterion;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/SearchCriterion;-><init>()V

    .line 2
    sget-object v1, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->Attribute:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    iput-object v1, v0, Lcom/tcl/netlibrary/entity/SearchCriterion;->type:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    const-string v1, "root"

    .line 3
    iput-object v1, v0, Lcom/tcl/netlibrary/entity/SearchCriterion;->name:Ljava/lang/String;

    const-string v1, "true"

    .line 4
    iput-object v1, v0, Lcom/tcl/netlibrary/entity/SearchCriterion;->value:Ljava/lang/String;

    .line 6
    new-instance v1, Lcom/tcl/netlibrary/entity/SearchCriteria;

    invoke-direct {v1}, Lcom/tcl/netlibrary/entity/SearchCriteria;-><init>()V

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/tcl/netlibrary/entity/SearchCriteria;->criterion:Ljava/util/List;

    .line 8
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v0, Lcom/tcl/netlibrary/entity/SelectionCriteria;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/SelectionCriteria;-><init>()V

    .line 11
    iput p1, v0, Lcom/tcl/netlibrary/entity/SelectionCriteria;->maxEntries:I

    .line 12
    iput-object v1, v0, Lcom/tcl/netlibrary/entity/SelectionCriteria;->searchCriteria:Lcom/tcl/netlibrary/entity/SearchCriteria;

    .line 14
    iget-object p1, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->uid:Ljava/lang/String;

    invoke-interface {p1, v0, v1, p2}, La/d/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getApiVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Lretrofit2/Call;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/tcl/netlibrary/bean/VvmserviceProfileBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, La/d/a/b/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    return-object v0
.end method

.method public getFolderQuota(Ljava/lang/String;)Lretrofit2/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/tcl/netlibrary/bean/FolderBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, La/d/a/b/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method

.method public getLastestGsoAndMessage(ILjava/util/List;)Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lcom/tcl/netlibrary/entity/Object;",
            ">;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    new-instance v1, Lcom/tcl/netlibrary/entity/GsoFolderReference;

    invoke-direct {v1}, Lcom/tcl/netlibrary/entity/GsoFolderReference;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->baseUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const-string v0, "%s/nms/v1/ums/%s/folders/%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/tcl/netlibrary/entity/GsoFolderReference;->resourceURL:Ljava/net/URI;

    .line 6
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    new-instance p2, Lcom/tcl/netlibrary/entity/GsoFolderReferenceList;

    invoke-direct {p2}, Lcom/tcl/netlibrary/entity/GsoFolderReferenceList;-><init>()V

    .line 10
    iput-object p1, p2, Lcom/tcl/netlibrary/entity/GsoFolderReferenceList;->folderReference:Ljava/util/List;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance p2, Lcom/tcl/netlibrary/entity/BulkFolderList;

    invoke-direct {p2}, Lcom/tcl/netlibrary/entity/BulkFolderList;-><init>()V

    .line 16
    iput-object p1, p2, Lcom/tcl/netlibrary/entity/BulkFolderList;->bulkFolders:Ljava/util/List;

    .line 18
    new-instance p1, Lcom/tcl/netlibrary/entity/BulkObjectSync;

    invoke-direct {p1}, Lcom/tcl/netlibrary/entity/BulkObjectSync;-><init>()V

    .line 19
    iput-object p2, p1, Lcom/tcl/netlibrary/entity/BulkObjectSync;->bulkFolderList:Lcom/tcl/netlibrary/entity/BulkFolderList;

    .line 21
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "bulkObjectSync"

    .line 22
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object p1, p0, Lcom/tcl/netlibrary/service/NetService;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "application/json;charset=UTF-8"

    .line 24
    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v5

    .line 26
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, La/d/a/b/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getObjectListByAllTextAttributes(I)Lretrofit2/Call;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lretrofit2/Call<",
            "Lcom/tcl/netlibrary/bean/ObjectListBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tcl/netlibrary/entity/Reference;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/Reference;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->baseUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->uid:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%s/nms/v1/ums/%s/folders/defaultfolderId"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/tcl/netlibrary/entity/Reference;->resourceURL:Ljava/net/URI;

    .line 5
    new-instance v1, Lcom/tcl/netlibrary/entity/SearchCriterion;

    invoke-direct {v1}, Lcom/tcl/netlibrary/entity/SearchCriterion;-><init>()V

    .line 6
    sget-object v2, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->AllTextAttributes:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    iput-object v2, v1, Lcom/tcl/netlibrary/entity/SearchCriterion;->type:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    const-string v2, "mstore"

    .line 7
    iput-object v2, v1, Lcom/tcl/netlibrary/entity/SearchCriterion;->value:Ljava/lang/String;

    .line 9
    new-instance v2, Lcom/tcl/netlibrary/entity/SortCriterion;

    invoke-direct {v2}, Lcom/tcl/netlibrary/entity/SortCriterion;-><init>()V

    .line 10
    sget-object v3, Lcom/tcl/netlibrary/entity/SortTypeEnum;->Date:Lcom/tcl/netlibrary/entity/SortTypeEnum;

    iput-object v3, v2, Lcom/tcl/netlibrary/entity/SortCriterion;->type:Lcom/tcl/netlibrary/entity/SortTypeEnum;

    .line 11
    sget-object v3, Lcom/tcl/netlibrary/entity/SortOrderEnum;->Descending:Lcom/tcl/netlibrary/entity/SortOrderEnum;

    iput-object v3, v2, Lcom/tcl/netlibrary/entity/SortCriterion;->order:Lcom/tcl/netlibrary/entity/SortOrderEnum;

    .line 13
    new-instance v3, Lcom/tcl/netlibrary/entity/SearchCriteria;

    invoke-direct {v3}, Lcom/tcl/netlibrary/entity/SearchCriteria;-><init>()V

    .line 14
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/tcl/netlibrary/entity/SearchCriteria;->criterion:Ljava/util/List;

    .line 15
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v1, Lcom/tcl/netlibrary/entity/SortCriteria;

    invoke-direct {v1}, Lcom/tcl/netlibrary/entity/SortCriteria;-><init>()V

    .line 18
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/tcl/netlibrary/entity/SortCriteria;->criterion:Ljava/util/List;

    .line 19
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v2, Lcom/tcl/netlibrary/entity/SelectionCriteria;

    invoke-direct {v2}, Lcom/tcl/netlibrary/entity/SelectionCriteria;-><init>()V

    .line 22
    iput p1, v2, Lcom/tcl/netlibrary/entity/SelectionCriteria;->maxEntries:I

    .line 23
    iput-object v0, v2, Lcom/tcl/netlibrary/entity/SelectionCriteria;->searchScope:Lcom/tcl/netlibrary/entity/Reference;

    .line 24
    iput-object v3, v2, Lcom/tcl/netlibrary/entity/SelectionCriteria;->searchCriteria:Lcom/tcl/netlibrary/entity/SearchCriteria;

    .line 25
    iput-object v1, v2, Lcom/tcl/netlibrary/entity/SelectionCriteria;->sortCriteria:Lcom/tcl/netlibrary/entity/SortCriteria;

    .line 27
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "selectionCriteria"

    .line 28
    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/json;charset=UTF-8"

    .line 30
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v6

    .line 32
    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v5, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, La/d/a/b/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method

.method public getObjectListByCursor(ILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/tcl/netlibrary/bean/ObjectListBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tcl/netlibrary/entity/Reference;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/Reference;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->baseUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const-string p2, "%s/nms/v1/ums/%s/folders/%s"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/tcl/netlibrary/entity/Reference;->resourceURL:Ljava/net/URI;

    .line 5
    new-instance p2, Lcom/tcl/netlibrary/entity/SortCriterion;

    invoke-direct {p2}, Lcom/tcl/netlibrary/entity/SortCriterion;-><init>()V

    .line 6
    sget-object v1, Lcom/tcl/netlibrary/entity/SortTypeEnum;->Date:Lcom/tcl/netlibrary/entity/SortTypeEnum;

    iput-object v1, p2, Lcom/tcl/netlibrary/entity/SortCriterion;->type:Lcom/tcl/netlibrary/entity/SortTypeEnum;

    .line 7
    sget-object v1, Lcom/tcl/netlibrary/entity/SortOrderEnum;->Ascending:Lcom/tcl/netlibrary/entity/SortOrderEnum;

    iput-object v1, p2, Lcom/tcl/netlibrary/entity/SortCriterion;->order:Lcom/tcl/netlibrary/entity/SortOrderEnum;

    .line 9
    new-instance v1, Lcom/tcl/netlibrary/entity/SortCriteria;

    invoke-direct {v1}, Lcom/tcl/netlibrary/entity/SortCriteria;-><init>()V

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/tcl/netlibrary/entity/SortCriteria;->criterion:Ljava/util/List;

    .line 11
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance p2, Lcom/tcl/netlibrary/entity/SelectionCriteria;

    invoke-direct {p2}, Lcom/tcl/netlibrary/entity/SelectionCriteria;-><init>()V

    .line 14
    iput p1, p2, Lcom/tcl/netlibrary/entity/SelectionCriteria;->maxEntries:I

    .line 15
    iput-object p3, p2, Lcom/tcl/netlibrary/entity/SelectionCriteria;->fromCursor:Ljava/lang/String;

    .line 16
    iput-object v0, p2, Lcom/tcl/netlibrary/entity/SelectionCriteria;->searchScope:Lcom/tcl/netlibrary/entity/Reference;

    .line 17
    iput-object v1, p2, Lcom/tcl/netlibrary/entity/SelectionCriteria;->sortCriteria:Lcom/tcl/netlibrary/entity/SortCriteria;

    .line 19
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p3, "selectionCriteria"

    .line 20
    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p2, p0, Lcom/tcl/netlibrary/service/NetService;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "application/json;charset=UTF-8"

    .line 22
    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v5

    .line 24
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, La/d/a/b/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method

.method public getObjectListByDate(ILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/tcl/netlibrary/bean/ObjectListBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tcl/netlibrary/entity/Reference;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/Reference;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->baseUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const-string p2, "%s/nms/v1/ums/%s/folders/%s"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/tcl/netlibrary/entity/Reference;->resourceURL:Ljava/net/URI;

    .line 5
    new-instance p2, Lcom/tcl/netlibrary/entity/SearchCriterion;

    invoke-direct {p2}, Lcom/tcl/netlibrary/entity/SearchCriterion;-><init>()V

    .line 6
    sget-object v1, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->Date:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    iput-object v1, p2, Lcom/tcl/netlibrary/entity/SearchCriterion;->type:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    .line 7
    iput-object p3, p2, Lcom/tcl/netlibrary/entity/SearchCriterion;->value:Ljava/lang/String;

    .line 9
    new-instance p3, Lcom/tcl/netlibrary/entity/SortCriterion;

    invoke-direct {p3}, Lcom/tcl/netlibrary/entity/SortCriterion;-><init>()V

    .line 10
    sget-object v1, Lcom/tcl/netlibrary/entity/SortTypeEnum;->Date:Lcom/tcl/netlibrary/entity/SortTypeEnum;

    iput-object v1, p3, Lcom/tcl/netlibrary/entity/SortCriterion;->type:Lcom/tcl/netlibrary/entity/SortTypeEnum;

    .line 11
    sget-object v1, Lcom/tcl/netlibrary/entity/SortOrderEnum;->Ascending:Lcom/tcl/netlibrary/entity/SortOrderEnum;

    iput-object v1, p3, Lcom/tcl/netlibrary/entity/SortCriterion;->order:Lcom/tcl/netlibrary/entity/SortOrderEnum;

    .line 13
    new-instance v1, Lcom/tcl/netlibrary/entity/SearchCriteria;

    invoke-direct {v1}, Lcom/tcl/netlibrary/entity/SearchCriteria;-><init>()V

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/tcl/netlibrary/entity/SearchCriteria;->criterion:Ljava/util/List;

    .line 15
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance p2, Lcom/tcl/netlibrary/entity/SortCriteria;

    invoke-direct {p2}, Lcom/tcl/netlibrary/entity/SortCriteria;-><init>()V

    .line 18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p2, Lcom/tcl/netlibrary/entity/SortCriteria;->criterion:Ljava/util/List;

    .line 19
    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance p3, Lcom/tcl/netlibrary/entity/SelectionCriteria;

    invoke-direct {p3}, Lcom/tcl/netlibrary/entity/SelectionCriteria;-><init>()V

    .line 22
    iput p1, p3, Lcom/tcl/netlibrary/entity/SelectionCriteria;->maxEntries:I

    .line 23
    iput-object v0, p3, Lcom/tcl/netlibrary/entity/SelectionCriteria;->searchScope:Lcom/tcl/netlibrary/entity/Reference;

    .line 24
    iput-object v1, p3, Lcom/tcl/netlibrary/entity/SelectionCriteria;->searchCriteria:Lcom/tcl/netlibrary/entity/SearchCriteria;

    .line 25
    iput-object p2, p3, Lcom/tcl/netlibrary/entity/SelectionCriteria;->sortCriteria:Lcom/tcl/netlibrary/entity/SortCriteria;

    .line 27
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "selectionCriteria"

    .line 28
    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object p2, p0, Lcom/tcl/netlibrary/service/NetService;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "application/json;charset=UTF-8"

    .line 30
    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v5

    .line 32
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, La/d/a/b/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method

.method public getObjectListByMessageContextAttributes(I)Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lcom/tcl/netlibrary/entity/Object;",
            ">;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tcl/netlibrary/entity/Reference;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/Reference;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->baseUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->uid:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%s/nms/v1/ums/%s/folders/dynamicconv1folderId"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/tcl/netlibrary/entity/Reference;->resourceURL:Ljava/net/URI;

    .line 5
    new-instance v1, Lcom/tcl/netlibrary/entity/SearchCriterion;

    invoke-direct {v1}, Lcom/tcl/netlibrary/entity/SearchCriterion;-><init>()V

    .line 6
    sget-object v2, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->Attribute:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    iput-object v2, v1, Lcom/tcl/netlibrary/entity/SearchCriterion;->type:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    const-string v2, "Message-Context"

    .line 7
    iput-object v2, v1, Lcom/tcl/netlibrary/entity/SearchCriterion;->name:Ljava/lang/String;

    const-string v2, "group-state-message"

    .line 8
    iput-object v2, v1, Lcom/tcl/netlibrary/entity/SearchCriterion;->value:Ljava/lang/String;

    .line 10
    new-instance v2, Lcom/tcl/netlibrary/entity/SortCriterion;

    invoke-direct {v2}, Lcom/tcl/netlibrary/entity/SortCriterion;-><init>()V

    .line 11
    sget-object v3, Lcom/tcl/netlibrary/entity/SortTypeEnum;->Date:Lcom/tcl/netlibrary/entity/SortTypeEnum;

    iput-object v3, v2, Lcom/tcl/netlibrary/entity/SortCriterion;->type:Lcom/tcl/netlibrary/entity/SortTypeEnum;

    .line 12
    sget-object v3, Lcom/tcl/netlibrary/entity/SortOrderEnum;->Descending:Lcom/tcl/netlibrary/entity/SortOrderEnum;

    iput-object v3, v2, Lcom/tcl/netlibrary/entity/SortCriterion;->order:Lcom/tcl/netlibrary/entity/SortOrderEnum;

    .line 14
    new-instance v3, Lcom/tcl/netlibrary/entity/SearchCriteria;

    invoke-direct {v3}, Lcom/tcl/netlibrary/entity/SearchCriteria;-><init>()V

    .line 15
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/tcl/netlibrary/entity/SearchCriteria;->criterion:Ljava/util/List;

    .line 16
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v1, Lcom/tcl/netlibrary/entity/SortCriteria;

    invoke-direct {v1}, Lcom/tcl/netlibrary/entity/SortCriteria;-><init>()V

    .line 19
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/tcl/netlibrary/entity/SortCriteria;->criterion:Ljava/util/List;

    .line 20
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v2, Lcom/tcl/netlibrary/entity/SelectionCriteria;

    invoke-direct {v2}, Lcom/tcl/netlibrary/entity/SelectionCriteria;-><init>()V

    .line 23
    iput p1, v2, Lcom/tcl/netlibrary/entity/SelectionCriteria;->maxEntries:I

    .line 24
    iput-object v0, v2, Lcom/tcl/netlibrary/entity/SelectionCriteria;->searchScope:Lcom/tcl/netlibrary/entity/Reference;

    .line 25
    iput-object v3, v2, Lcom/tcl/netlibrary/entity/SelectionCriteria;->searchCriteria:Lcom/tcl/netlibrary/entity/SearchCriteria;

    .line 26
    iput-object v1, v2, Lcom/tcl/netlibrary/entity/SelectionCriteria;->sortCriteria:Lcom/tcl/netlibrary/entity/SortCriteria;

    .line 28
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "selectionCriteria"

    .line 29
    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/json;charset=UTF-8"

    .line 31
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->uid:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, p1}, La/d/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getObjectListByModifiedDate(ILjava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lcom/tcl/netlibrary/entity/Object;",
            ">;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tcl/netlibrary/entity/Reference;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/Reference;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->baseUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->uid:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const-string p2, "%s/nms/v1/ums/%s/folders/%s"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/tcl/netlibrary/entity/Reference;->resourceURL:Ljava/net/URI;

    .line 5
    new-instance p2, Lcom/tcl/netlibrary/entity/SearchCriterion;

    invoke-direct {p2}, Lcom/tcl/netlibrary/entity/SearchCriterion;-><init>()V

    .line 6
    sget-object v1, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->ModifiedDate:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    iput-object v1, p2, Lcom/tcl/netlibrary/entity/SearchCriterion;->type:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    .line 7
    iput-object p3, p2, Lcom/tcl/netlibrary/entity/SearchCriterion;->value:Ljava/lang/String;

    .line 9
    new-instance p3, Lcom/tcl/netlibrary/entity/SearchCriterion;

    invoke-direct {p3}, Lcom/tcl/netlibrary/entity/SearchCriterion;-><init>()V

    .line 10
    sget-object v1, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->PurgedObjects:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    iput-object v1, p3, Lcom/tcl/netlibrary/entity/SearchCriterion;->type:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    const-string v1, ""

    .line 11
    iput-object v1, p3, Lcom/tcl/netlibrary/entity/SearchCriterion;->value:Ljava/lang/String;

    .line 13
    new-instance v1, Lcom/tcl/netlibrary/entity/SearchCriteria;

    invoke-direct {v1}, Lcom/tcl/netlibrary/entity/SearchCriteria;-><init>()V

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/tcl/netlibrary/entity/SearchCriteria;->criterion:Ljava/util/List;

    .line 15
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p2, v1, Lcom/tcl/netlibrary/entity/SearchCriteria;->criterion:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object p2, Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;->Not:Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;

    iput-object p2, v1, Lcom/tcl/netlibrary/entity/SearchCriteria;->operator:Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;

    .line 19
    new-instance p2, Lcom/tcl/netlibrary/entity/SortCriterion;

    invoke-direct {p2}, Lcom/tcl/netlibrary/entity/SortCriterion;-><init>()V

    .line 20
    sget-object p3, Lcom/tcl/netlibrary/entity/SortTypeEnum;->Date:Lcom/tcl/netlibrary/entity/SortTypeEnum;

    iput-object p3, p2, Lcom/tcl/netlibrary/entity/SortCriterion;->type:Lcom/tcl/netlibrary/entity/SortTypeEnum;

    .line 21
    sget-object p3, Lcom/tcl/netlibrary/entity/SortOrderEnum;->Descending:Lcom/tcl/netlibrary/entity/SortOrderEnum;

    iput-object p3, p2, Lcom/tcl/netlibrary/entity/SortCriterion;->order:Lcom/tcl/netlibrary/entity/SortOrderEnum;

    .line 23
    new-instance p3, Lcom/tcl/netlibrary/entity/SortCriteria;

    invoke-direct {p3}, Lcom/tcl/netlibrary/entity/SortCriteria;-><init>()V

    .line 24
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p3, Lcom/tcl/netlibrary/entity/SortCriteria;->criterion:Ljava/util/List;

    .line 25
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance p2, Lcom/tcl/netlibrary/entity/SelectionCriteria;

    invoke-direct {p2}, Lcom/tcl/netlibrary/entity/SelectionCriteria;-><init>()V

    .line 28
    iput p1, p2, Lcom/tcl/netlibrary/entity/SelectionCriteria;->maxEntries:I

    .line 29
    iput-object v0, p2, Lcom/tcl/netlibrary/entity/SelectionCriteria;->searchScope:Lcom/tcl/netlibrary/entity/Reference;

    .line 30
    iput-object v1, p2, Lcom/tcl/netlibrary/entity/SelectionCriteria;->searchCriteria:Lcom/tcl/netlibrary/entity/SearchCriteria;

    .line 31
    iput-object p3, p2, Lcom/tcl/netlibrary/entity/SelectionCriteria;->sortCriteria:Lcom/tcl/netlibrary/entity/SortCriteria;

    .line 33
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p3, "selectionCriteria"

    .line 34
    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object p2, p0, Lcom/tcl/netlibrary/service/NetService;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "application/json;charset=UTF-8"

    .line 36
    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 38
    iget-object p2, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object p3, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->uid:Ljava/lang/String;

    invoke-interface {p2, p3, v0, v1, p1}, La/d/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getObjectListOfFax(ILjava/lang/String;)Lretrofit2/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/tcl/netlibrary/bean/ObjectListBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tcl/netlibrary/entity/Reference;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/Reference;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->baseUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->uid:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const-string p2, "%s/nms/v1/ums/%s/folders/%s"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/tcl/netlibrary/entity/Reference;->resourceURL:Ljava/net/URI;

    .line 5
    new-instance p2, Lcom/tcl/netlibrary/entity/SearchCriterion;

    invoke-direct {p2}, Lcom/tcl/netlibrary/entity/SearchCriterion;-><init>()V

    .line 6
    sget-object v1, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->Attribute:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    iput-object v1, p2, Lcom/tcl/netlibrary/entity/SearchCriterion;->type:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    const-string v1, "Message-Context"

    .line 7
    iput-object v1, p2, Lcom/tcl/netlibrary/entity/SearchCriterion;->name:Ljava/lang/String;

    const-string v1, "fax-message"

    .line 8
    iput-object v1, p2, Lcom/tcl/netlibrary/entity/SearchCriterion;->value:Ljava/lang/String;

    .line 10
    new-instance v1, Lcom/tcl/netlibrary/entity/SearchCriteria;

    invoke-direct {v1}, Lcom/tcl/netlibrary/entity/SearchCriteria;-><init>()V

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/tcl/netlibrary/entity/SearchCriteria;->criterion:Ljava/util/List;

    .line 12
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance p2, Lcom/tcl/netlibrary/entity/SelectionCriteria;

    invoke-direct {p2}, Lcom/tcl/netlibrary/entity/SelectionCriteria;-><init>()V

    .line 15
    iput p1, p2, Lcom/tcl/netlibrary/entity/SelectionCriteria;->maxEntries:I

    .line 16
    iput-object v0, p2, Lcom/tcl/netlibrary/entity/SelectionCriteria;->searchScope:Lcom/tcl/netlibrary/entity/Reference;

    .line 17
    iput-object v1, p2, Lcom/tcl/netlibrary/entity/SelectionCriteria;->searchCriteria:Lcom/tcl/netlibrary/entity/SearchCriteria;

    .line 19
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "selectionCriteria"

    .line 20
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p2, p0, Lcom/tcl/netlibrary/service/NetService;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "application/json;charset=UTF-8"

    .line 22
    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v5

    .line 23
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, La/d/a/b/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method

.method public getObjectListOfVoicemail(ILjava/lang/String;)Lretrofit2/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/tcl/netlibrary/bean/ObjectListBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tcl/netlibrary/entity/Reference;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/Reference;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->baseUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const-string p2, "%s/nms/v1/ums/%s/folders/%s"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/tcl/netlibrary/entity/Reference;->resourceURL:Ljava/net/URI;

    .line 5
    new-instance p2, Lcom/tcl/netlibrary/entity/SearchCriterion;

    invoke-direct {p2}, Lcom/tcl/netlibrary/entity/SearchCriterion;-><init>()V

    .line 6
    sget-object v1, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->Attribute:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    iput-object v1, p2, Lcom/tcl/netlibrary/entity/SearchCriterion;->type:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    const-string v1, "Message-Context"

    .line 7
    iput-object v1, p2, Lcom/tcl/netlibrary/entity/SearchCriterion;->name:Ljava/lang/String;

    const-string v1, "voice-message"

    .line 8
    iput-object v1, p2, Lcom/tcl/netlibrary/entity/SearchCriterion;->value:Ljava/lang/String;

    .line 10
    new-instance v1, Lcom/tcl/netlibrary/entity/SearchCriteria;

    invoke-direct {v1}, Lcom/tcl/netlibrary/entity/SearchCriteria;-><init>()V

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/tcl/netlibrary/entity/SearchCriteria;->criterion:Ljava/util/List;

    .line 12
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance p2, Lcom/tcl/netlibrary/entity/SelectionCriteria;

    invoke-direct {p2}, Lcom/tcl/netlibrary/entity/SelectionCriteria;-><init>()V

    .line 15
    iput p1, p2, Lcom/tcl/netlibrary/entity/SelectionCriteria;->maxEntries:I

    .line 16
    iput-object v0, p2, Lcom/tcl/netlibrary/entity/SelectionCriteria;->searchScope:Lcom/tcl/netlibrary/entity/Reference;

    .line 17
    iput-object v1, p2, Lcom/tcl/netlibrary/entity/SelectionCriteria;->searchCriteria:Lcom/tcl/netlibrary/entity/SearchCriteria;

    .line 19
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "selectionCriteria"

    .line 20
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p2, p0, Lcom/tcl/netlibrary/service/NetService;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "application/json;charset=UTF-8"

    .line 22
    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v5

    .line 23
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, La/d/a/b/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method

.method public getServerRoot()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    return-object v0
.end method

.method public getTel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getVVMServiceProfile()Lretrofit2/Call;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/tcl/netlibrary/bean/VvmserviceProfileBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, La/d/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    return-object v0
.end method

.method public initNetService(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/tcl/netlibrary/config/VVMConfig;->getInstance(Landroid/content/Context;)Lcom/tcl/netlibrary/config/VVMConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tcl/netlibrary/config/VVMConfig;->getServerRoot()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/service/NetService;->setServerRoot(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/tcl/netlibrary/config/VVMConfig;->getInstance(Landroid/content/Context;)Lcom/tcl/netlibrary/config/VVMConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tcl/netlibrary/config/VVMConfig;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/service/NetService;->setTel(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/tcl/netlibrary/config/VVMConfig;->getInstance(Landroid/content/Context;)Lcom/tcl/netlibrary/config/VVMConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tcl/netlibrary/config/VVMConfig;->getApiVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/service/NetService;->setApiVersion(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/tcl/netlibrary/config/VVMConfig;->getInstance(Landroid/content/Context;)Lcom/tcl/netlibrary/config/VVMConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tcl/netlibrary/config/VVMConfig;->getStoreName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/service/NetService;->setStoreName(Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Lcom/tcl/netlibrary/config/VVMConfig;->getInstance(Landroid/content/Context;)Lcom/tcl/netlibrary/config/VVMConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tcl/netlibrary/config/VVMConfig;->getWSGURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/service/NetService;->setBaseUrl(Ljava/lang/String;)V

    .line 6
    invoke-static {p1}, Lcom/tcl/netlibrary/config/VVMConfig;->getInstance(Landroid/content/Context;)Lcom/tcl/netlibrary/config/VVMConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tcl/netlibrary/config/VVMConfig;->getWSGURI()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tcl/netlibrary/service/NetService;->createApiService(Ljava/lang/String;)V

    return-void
.end method

.method public markNotToDelete(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, La/d/a/b/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public markToSeen(Ljava/lang/String;)Lretrofit2/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, La/d/a/b/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method

.method public markToUnread(Ljava/lang/String;)Lretrofit2/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, La/d/a/b/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method

.method public retrieveObject(Ljava/lang/String;)Lretrofit2/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/tcl/netlibrary/bean/ObjectBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, La/d/a/b/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method

.method public retrieveVoicemailMediaContent(Ljava/lang/String;)Lretrofit2/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, La/d/a/b/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method

.method public setApiVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    return-void
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/service/NetService;->baseUrl:Ljava/lang/String;

    return-void
.end method

.method public setServerRoot(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    return-void
.end method

.method public setStoreName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    return-void
.end method

.method public setTel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/service/NetService;->uid:Ljava/lang/String;

    return-void
.end method

.method public updateEmailAddress(Ljava/util/List;)Lretrofit2/Call;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tcl/netlibrary/entity/Attribute;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/Attribute;-><init>()V

    const-string v1, "EmailAddress"

    .line 2
    iput-object v1, v0, Lcom/tcl/netlibrary/entity/Attribute;->name:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    .line 4
    iput-object p1, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    .line 6
    new-instance p1, Lcom/tcl/netlibrary/entity/AttributeList;

    invoke-direct {p1}, Lcom/tcl/netlibrary/entity/AttributeList;-><init>()V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/tcl/netlibrary/entity/AttributeList;->attribute:Ljava/util/List;

    .line 8
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v0, Lcom/tcl/netlibrary/entity/VvmserviceProfile;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/VvmserviceProfile;-><init>()V

    .line 11
    iput-object p1, v0, Lcom/tcl/netlibrary/entity/VvmserviceProfile;->attributes:Lcom/tcl/netlibrary/entity/AttributeList;

    .line 13
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "vvmserviceProfile"

    .line 14
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/json;charset=UTF-8"

    .line 16
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v6

    .line 18
    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v5, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, La/d/a/b/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method

.method public updateLanguage(Ljava/lang/String;)Lretrofit2/Call;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tcl/netlibrary/entity/Attribute;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/Attribute;-><init>()V

    const-string v1, "Language"

    .line 2
    iput-object v1, v0, Lcom/tcl/netlibrary/entity/Attribute;->name:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    .line 4
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance p1, Lcom/tcl/netlibrary/entity/AttributeList;

    invoke-direct {p1}, Lcom/tcl/netlibrary/entity/AttributeList;-><init>()V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/tcl/netlibrary/entity/AttributeList;->attribute:Ljava/util/List;

    .line 8
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v0, Lcom/tcl/netlibrary/entity/VvmserviceProfile;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/VvmserviceProfile;-><init>()V

    .line 11
    iput-object p1, v0, Lcom/tcl/netlibrary/entity/VvmserviceProfile;->attributes:Lcom/tcl/netlibrary/entity/AttributeList;

    .line 13
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "vvmserviceProfile"

    .line 14
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/json;charset=UTF-8"

    .line 16
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v6

    .line 18
    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v5, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, La/d/a/b/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method

.method public updateNUTSetting(Z)Lretrofit2/Call;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tcl/netlibrary/entity/Attribute;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/Attribute;-><init>()V

    const-string v1, "NUT"

    .line 2
    iput-object v1, v0, Lcom/tcl/netlibrary/entity/Attribute;->name:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance p1, Lcom/tcl/netlibrary/entity/AttributeList;

    invoke-direct {p1}, Lcom/tcl/netlibrary/entity/AttributeList;-><init>()V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/tcl/netlibrary/entity/AttributeList;->attribute:Ljava/util/List;

    .line 8
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v0, Lcom/tcl/netlibrary/entity/VvmserviceProfile;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/VvmserviceProfile;-><init>()V

    .line 11
    iput-object p1, v0, Lcom/tcl/netlibrary/entity/VvmserviceProfile;->attributes:Lcom/tcl/netlibrary/entity/AttributeList;

    .line 13
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "vvmserviceProfile"

    .line 14
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/json;charset=UTF-8"

    .line 16
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v6

    .line 18
    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v5, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, La/d/a/b/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method

.method public updateObjectAttribute(Ljava/lang/String;Ljava/util/List;)Lretrofit2/Call;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tcl/netlibrary/entity/Attribute;",
            ">;)",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tcl/netlibrary/entity/Object;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/Object;-><init>()V

    .line 4
    new-instance v1, Lcom/tcl/netlibrary/entity/AttributeList;

    invoke-direct {v1}, Lcom/tcl/netlibrary/entity/AttributeList;-><init>()V

    iput-object v1, v0, Lcom/tcl/netlibrary/entity/Object;->attributes:Lcom/tcl/netlibrary/entity/AttributeList;

    .line 5
    iput-object p2, v1, Lcom/tcl/netlibrary/entity/AttributeList;->attribute:Ljava/util/List;

    .line 6
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v1, "object"

    .line 7
    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "application/json;charset=UTF-8"

    .line 9
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v7

    .line 11
    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v5, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    move-object v6, p1

    invoke-interface/range {v1 .. v7}, La/d/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method

.method public updateTuiPin(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tcl/netlibrary/entity/Attribute;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/Attribute;-><init>()V

    const-string v1, "PWD"

    .line 2
    iput-object v1, v0, Lcom/tcl/netlibrary/entity/Attribute;->name:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    .line 4
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance p2, Lcom/tcl/netlibrary/entity/Attribute;

    invoke-direct {p2}, Lcom/tcl/netlibrary/entity/Attribute;-><init>()V

    const-string v1, "OLD_PWD"

    .line 7
    iput-object v1, p2, Lcom/tcl/netlibrary/entity/Attribute;->name:Ljava/lang/String;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p2, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    .line 9
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance p1, Lcom/tcl/netlibrary/entity/AttributeList;

    invoke-direct {p1}, Lcom/tcl/netlibrary/entity/AttributeList;-><init>()V

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/tcl/netlibrary/entity/AttributeList;->attribute:Ljava/util/List;

    .line 13
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p1, Lcom/tcl/netlibrary/entity/AttributeList;->attribute:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance p2, Lcom/tcl/netlibrary/entity/VvmserviceProfile;

    invoke-direct {p2}, Lcom/tcl/netlibrary/entity/VvmserviceProfile;-><init>()V

    .line 17
    iput-object p1, p2, Lcom/tcl/netlibrary/entity/VvmserviceProfile;->attributes:Lcom/tcl/netlibrary/entity/AttributeList;

    .line 19
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "vvmserviceProfile"

    .line 20
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p2, p0, Lcom/tcl/netlibrary/service/NetService;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "application/json;charset=UTF-8"

    .line 22
    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v5

    .line 24
    iget-object v0, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, La/d/a/b/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method

.method public uploadGreetingMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lretrofit2/Call;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B)",
            "Lretrofit2/Call<",
            "Lcom/tcl/netlibrary/bean/ReferenceBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tcl/netlibrary/entity/Attribute;

    invoke-direct {v0}, Lcom/tcl/netlibrary/entity/Attribute;-><init>()V

    const-string v1, "Date"

    .line 2
    iput-object v1, v0, Lcom/tcl/netlibrary/entity/Attribute;->name:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    .line 5
    invoke-static {}, Lcom/tcl/netlibrary/util/DateUtil;->getUTCTime()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Lcom/tcl/netlibrary/entity/Attribute;

    invoke-direct {v1}, Lcom/tcl/netlibrary/entity/Attribute;-><init>()V

    const-string v2, "X-CNS-Greeting-Type"

    .line 8
    iput-object v2, v1, Lcom/tcl/netlibrary/entity/Attribute;->name:Ljava/lang/String;

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    const-string v3, "normal-greeting"

    .line 10
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v2, Lcom/tcl/netlibrary/entity/Attribute;

    invoke-direct {v2}, Lcom/tcl/netlibrary/entity/Attribute;-><init>()V

    const-string v3, "Message-Id"

    .line 13
    iput-object v3, v2, Lcom/tcl/netlibrary/entity/Attribute;->name:Ljava/lang/String;

    .line 14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    .line 15
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance p1, Lcom/tcl/netlibrary/entity/Attribute;

    invoke-direct {p1}, Lcom/tcl/netlibrary/entity/Attribute;-><init>()V

    const-string v3, "MIME-Version"

    .line 18
    iput-object v3, p1, Lcom/tcl/netlibrary/entity/Attribute;->name:Ljava/lang/String;

    .line 19
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p1, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    const-string v4, "1.0"

    .line 20
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v3, Lcom/tcl/netlibrary/entity/Attribute;

    invoke-direct {v3}, Lcom/tcl/netlibrary/entity/Attribute;-><init>()V

    const-string v4, "Content-Duration"

    .line 23
    iput-object v4, v3, Lcom/tcl/netlibrary/entity/Attribute;->name:Ljava/lang/String;

    .line 24
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    .line 25
    invoke-interface {v4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance p3, Lcom/tcl/netlibrary/entity/Attribute;

    invoke-direct {p3}, Lcom/tcl/netlibrary/entity/Attribute;-><init>()V

    const-string v4, "subject"

    .line 28
    iput-object v4, p3, Lcom/tcl/netlibrary/entity/Attribute;->name:Ljava/lang/String;

    .line 29
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p3, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    .line 30
    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance p2, Lcom/tcl/netlibrary/entity/AttributeList;

    invoke-direct {p2}, Lcom/tcl/netlibrary/entity/AttributeList;-><init>()V

    .line 33
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p2, Lcom/tcl/netlibrary/entity/AttributeList;->attribute:Ljava/util/List;

    .line 34
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p2, Lcom/tcl/netlibrary/entity/AttributeList;->attribute:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p2, Lcom/tcl/netlibrary/entity/AttributeList;->attribute:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p2, Lcom/tcl/netlibrary/entity/AttributeList;->attribute:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object p1, p2, Lcom/tcl/netlibrary/entity/AttributeList;->attribute:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object p1, p2, Lcom/tcl/netlibrary/entity/AttributeList;->attribute:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance p1, Lcom/tcl/netlibrary/entity/FlagList;

    invoke-direct {p1}, Lcom/tcl/netlibrary/entity/FlagList;-><init>()V

    .line 42
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p1, Lcom/tcl/netlibrary/entity/FlagList;->flag:Ljava/util/List;

    .line 46
    new-instance p3, Lcom/tcl/netlibrary/entity/Object;

    invoke-direct {p3}, Lcom/tcl/netlibrary/entity/Object;-><init>()V

    const-string v0, "/VV-Mail/Greetings"

    .line 47
    iput-object v0, p3, Lcom/tcl/netlibrary/entity/Object;->parentFolderPath:Ljava/lang/String;

    .line 48
    iput-object p2, p3, Lcom/tcl/netlibrary/entity/Object;->attributes:Lcom/tcl/netlibrary/entity/AttributeList;

    .line 49
    iput-object p1, p3, Lcom/tcl/netlibrary/entity/Object;->flags:Lcom/tcl/netlibrary/entity/FlagList;

    .line 51
    new-instance v6, Lcom/tcl/netlibrary/bean/ObjectBean;

    invoke-direct {v6}, Lcom/tcl/netlibrary/bean/ObjectBean;-><init>()V

    .line 52
    iput-object p3, v6, Lcom/tcl/netlibrary/bean/ObjectBean;->object:Lcom/tcl/netlibrary/entity/Object;

    .line 54
    new-instance p1, Lokhttp3/Headers$Builder;

    invoke-direct {p1}, Lokhttp3/Headers$Builder;-><init>()V

    const-string p2, "Content-Disposition"

    const-string p3, "attachment; filename=\"greeting.amr\""

    .line 55
    invoke-virtual {p1, p2, p3}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    const-string p2, "Content-Transfer-Encoding"

    const-string p3, "base64"

    .line 56
    invoke-virtual {p1, p2, p3}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 57
    invoke-virtual {p1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object p1

    const-string p2, "audio/amr"

    .line 60
    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {}, Ljava/util/Base64;->getMimeEncoder()Ljava/util/Base64$Encoder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/util/Base64$Encoder;->encode([B)[B

    move-result-object p3

    invoke-static {p2, p3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object p2

    .line 61
    invoke-static {p1, p2}, Lokhttp3/MultipartBody$Part;->create(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v7

    .line 64
    iget-object v1, p0, Lcom/tcl/netlibrary/service/NetService;->apiService:La/d/a/b/a;

    iget-object v2, p0, Lcom/tcl/netlibrary/service/NetService;->serverRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/tcl/netlibrary/service/NetService;->apiVersion:Ljava/lang/String;

    iget-object v4, p0, Lcom/tcl/netlibrary/service/NetService;->storeName:Ljava/lang/String;

    iget-object v5, p0, Lcom/tcl/netlibrary/service/NetService;->tel:Ljava/lang/String;

    invoke-interface/range {v1 .. v7}, La/d/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tcl/netlibrary/bean/ObjectBean;Lokhttp3/MultipartBody$Part;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method
