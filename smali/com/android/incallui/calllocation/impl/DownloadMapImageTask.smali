.class Lcom/android/incallui/calllocation/impl/DownloadMapImageTask;
.super Landroid/os/AsyncTask;
.source "DownloadMapImageTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/location/Location;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final STATIC_MAP_SRC_NAME:Ljava/lang/String; = "src"


# instance fields
.field private final mUiReference:Ljava/lang/ref/WeakReference;
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

    .line 36
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/incallui/calllocation/impl/DownloadMapImageTask;->mUiReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/location/Location;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/android/incallui/calllocation/impl/DownloadMapImageTask;->mUiReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/calllocation/impl/LocationPresenter$LocationUi;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    const-string v3, "DownloadMapImageTask.doInBackground"

    if-eqz p1, :cond_2

    .line 46
    array-length v4, p1

    if-nez v4, :cond_1

    goto :goto_1

    .line 52
    :cond_1
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-interface {v0}, Lcom/android/incallui/calllocation/impl/LocationPresenter$LocationUi;->getContext()Landroid/content/Context;

    move-result-object v0

    aget-object p1, p1, v2

    invoke-static {v0, p1}, Lcom/android/incallui/calllocation/impl/LocationUrlBuilder;->getStaticMapUrl(Landroid/content/Context;Landroid/location/Location;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v4}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    const v0, 0xd000

    .line 55
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    const-string v0, "src"

    .line 56
    invoke-static {p1, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "Exception!!!"

    .line 58
    invoke-static {v3, v0, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object v1

    :goto_0
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 62
    throw p1

    :cond_2
    :goto_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "No location provided"

    .line 47
    invoke-static {v3, v0, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, [Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/android/incallui/calllocation/impl/DownloadMapImageTask;->doInBackground([Landroid/location/Location;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/android/incallui/calllocation/impl/DownloadMapImageTask;->mUiReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/calllocation/impl/LocationPresenter$LocationUi;

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/incallui/calllocation/impl/LocationPresenter$LocationUi;->setMap(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "DownloadMapImageTask.onPostExecute"

    const-string v1, "Exception!!!"

    .line 75
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/incallui/calllocation/impl/DownloadMapImageTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
