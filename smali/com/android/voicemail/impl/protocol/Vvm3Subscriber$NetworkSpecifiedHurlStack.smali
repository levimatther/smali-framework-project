.class Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$NetworkSpecifiedHurlStack;
.super Lcom/android/volley/toolbox/HurlStack;
.source "Vvm3Subscriber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkSpecifiedHurlStack"
.end annotation


# instance fields
.field private final mNetwork:Landroid/net/Network;


# direct methods
.method public constructor <init>(Landroid/net/Network;)V
    .locals 0

    .line 369
    invoke-direct {p0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    .line 370
    iput-object p1, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$NetworkSpecifiedHurlStack;->mNetwork:Landroid/net/Network;

    return-void
.end method


# virtual methods
.method protected createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$NetworkSpecifiedHurlStack;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, p1}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method
