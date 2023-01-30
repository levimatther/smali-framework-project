.class Lcom/android/incallui/calllocation/impl/ReverseGeocodeTask;
.super Landroid/os/AsyncTask;
.source "ReverseGeocodeTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/location/Location;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final JSON_KEY_ADDRESS:Ljava/lang/String; = "formatted_address"

.field private static final JSON_KEY_ADDRESS_COMPONENTS:Ljava/lang/String; = "address_components"

.field private static final JSON_KEY_LONG_NAME:Ljava/lang/String; = "long_name"

.field private static final JSON_KEY_PREMISE:Ljava/lang/String; = "premise"

.field private static final JSON_KEY_RESULTS:Ljava/lang/String; = "results"

.field private static final JSON_KEY_SHORT_NAME:Ljava/lang/String; = "short_name"

.field private static final JSON_KEY_TYPES:Ljava/lang/String; = "types"


# instance fields
.field private mUiReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/incallui/calllocation/impl/LocationPresenter$LocationUi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/incallui/calllocation/impl/LocationPresenter$LocationUi;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/incallui/calllocation/impl/ReverseGeocodeTask;->mUiReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, [Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/android/incallui/calllocation/impl/ReverseGeocodeTask;->doInBackground([Landroid/location/Location;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/location/Location;)Ljava/lang/String;
    .locals 13

    const-string v0, "long_name"

    const-string v1, "short_name"

    .line 50
    iget-object v2, p0, Lcom/android/incallui/calllocation/impl/ReverseGeocodeTask;->mUiReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/calllocation/impl/LocationPresenter$LocationUi;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const-string v4, "ReverseGeocodeTask.onLocationChanged"

    const/4 v5, 0x0

    if-eqz p1, :cond_a

    .line 54
    array-length v6, p1

    if-nez v6, :cond_1

    goto/16 :goto_6

    .line 61
    :cond_1
    :try_start_0
    aget-object p1, p1, v5

    invoke-static {p1}, Lcom/android/incallui/calllocation/impl/LocationUrlBuilder;->getReverseGeocodeUrl(Landroid/location/Location;)Ljava/lang/String;

    move-result-object p1

    const v6, 0xd001

    .line 63
    invoke-static {v6}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 64
    invoke-interface {v2}, Lcom/android/incallui/calllocation/impl/LocationPresenter$LocationUi;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/incallui/calllocation/impl/HttpFetcher;->getRequestAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "results"

    .line 69
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 70
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 71
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string v2, "formatted_address"

    .line 73
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "address_components"

    .line 76
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_7

    move v6, v5

    move v7, v6

    :goto_0
    if-nez v6, :cond_7

    .line 79
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 80
    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "types"

    .line 81
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-eqz v9, :cond_6

    move v10, v5

    :goto_1
    if-nez v6, :cond_6

    .line 83
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_6

    const-string v11, "premise"

    .line 84
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 86
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 87
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 88
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 89
    :cond_2
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 90
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 91
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_3
    move-object v11, v3

    :goto_2
    if-eqz v11, :cond_5

    const/16 v6, 0x2c

    .line 94
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-lez v6, :cond_4

    .line 95
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_4

    add-int/lit8 v6, v6, 0x1

    .line 96
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_4
    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_7
    const-string p1, ", USA"

    .line 110
    invoke-virtual {v2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 111
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x5

    invoke-virtual {v2, v5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lcom/android/incallui/calllocation/impl/AuthException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_8
    move-object v3, v2

    .line 128
    :cond_9
    :goto_4
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object v3

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "Exception!!!"

    .line 125
    invoke-static {v4, v0, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object v3

    :catch_1
    move-exception p1

    :try_start_2
    const-string v0, "JSONException"

    .line 122
    invoke-static {v4, v0, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object v3

    :catch_2
    move-exception p1

    :try_start_3
    const-string v0, "AuthException"

    .line 119
    invoke-static {v4, v0, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object v3

    :goto_5
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 129
    throw p1

    :cond_a
    :goto_6
    new-array p1, v5, [Ljava/lang/Object;

    const-string v0, "No location provided"

    .line 55
    invoke-static {v4, v0, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/incallui/calllocation/impl/ReverseGeocodeTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/android/incallui/calllocation/impl/ReverseGeocodeTask;->mUiReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/calllocation/impl/LocationPresenter$LocationUi;

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/incallui/calllocation/impl/LocationPresenter$LocationUi;->setAddress(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ReverseGeocodeTask.onPostExecute"

    const-string v1, "Exception!!!"

    .line 142
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
