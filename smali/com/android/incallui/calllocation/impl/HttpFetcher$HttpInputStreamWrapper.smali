.class Lcom/android/incallui/calllocation/impl/HttpFetcher$HttpInputStreamWrapper;
.super Ljava/io/FilterInputStream;
.source "HttpFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/calllocation/impl/HttpFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpInputStreamWrapper"
.end annotation


# instance fields
.field final mHttpUrlConnection:Ljava/net/HttpURLConnection;

.field final mStartMillis:J


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)V
    .locals 2

    .line 275
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/calllocation/impl/HttpFetcher$HttpInputStreamWrapper;->mStartMillis:J

    .line 276
    iput-object p1, p0, Lcom/android/incallui/calllocation/impl/HttpFetcher$HttpInputStreamWrapper;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 282
    iget-object v0, p0, Lcom/android/incallui/calllocation/impl/HttpFetcher$HttpInputStreamWrapper;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 283
    invoke-static {}, Lcom/android/dialer/common/LogUtil;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetch took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/incallui/calllocation/impl/HttpFetcher$HttpInputStreamWrapper;->mStartMillis:J

    sub-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "HttpFetcher.close"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
