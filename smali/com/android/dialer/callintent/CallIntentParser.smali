.class public Lcom/android/dialer/callintent/CallIntentParser;
.super Ljava/lang/Object;
.source "CallIntentParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallSpecificAppData(Landroid/os/Bundle;)Lcom/android/dialer/callintent/CallSpecificAppData;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "com.android.dialer.callintent.CALL_SPECIFIC_APP_DATA"

    .line 35
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    .line 39
    :cond_1
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_2

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v1, "CallIntentParser.getCallSpecificAppData"

    const-string/jumbo v2, "unexpected null byte array for call specific app data proto"

    .line 40
    invoke-static {v1, v2, p0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 47
    :cond_2
    invoke-static {}, Lcom/android/dialer/callintent/CallSpecificAppData;->getDefaultInstance()Lcom/android/dialer/callintent/CallSpecificAppData;

    move-result-object v0

    .line 46
    invoke-static {p0, v1, v0}, Lcom/android/dialer/protos/ProtoParsers;->getTrusted(Landroid/os/Bundle;Ljava/lang/String;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/CallSpecificAppData;

    return-object p0
.end method

.method public static putCallSpecificAppData(Landroid/os/Bundle;Lcom/android/dialer/callintent/CallSpecificAppData;)V
    .locals 1

    const-string v0, "com.android.dialer.callintent.CALL_SPECIFIC_APP_DATA"

    .line 52
    invoke-static {p0, v0, p1}, Lcom/android/dialer/protos/ProtoParsers;->put(Landroid/os/Bundle;Ljava/lang/String;Lcom/google/protobuf/MessageLite;)V

    return-void
.end method
