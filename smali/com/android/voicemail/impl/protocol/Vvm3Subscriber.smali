.class public Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;
.super Ljava/lang/Object;
.source "Vvm3Subscriber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$NetworkSpecifiedHurlStack;,
        Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$ProvisioningException;
    }
.end annotation


# static fields
.field private static final OPERATION_GET_SPG_URL:Ljava/lang/String; = "retrieveSPGURL"

.field private static final REQUEST_TIMEOUT_SECONDS:I = 0x1e

.field private static final SPG_APP_TOKEN:Ljava/lang/String; = "q8e3t5u2o1"

.field private static final SPG_APP_TOKEN_PARAM:Ljava/lang/String; = "APP_TOKEN"

.field private static final SPG_DEVICE_MODEL_ANDROID:Ljava/lang/String; = "DROID_4G"

.field private static final SPG_DEVICE_MODEL_PARAM:Ljava/lang/String; = "DEVICE_MODEL"

.field private static final SPG_LANGUAGE_EN:Ljava/lang/String; = "ENGLISH"

.field private static final SPG_LANGUAGE_PARAM:Ljava/lang/String; = "SPG_LANGUAGE_PARAM"

.field private static final SPG_URL_TAG:Ljava/lang/String; = "spgurl"

.field private static final SPG_VZW_MDN_PARAM:Ljava/lang/String; = "VZW_MDN"

.field private static final SPG_VZW_SERVICE_BASIC:Ljava/lang/String; = "BVVM"

.field private static final SPG_VZW_SERVICE_PARAM:Ljava/lang/String; = "VZW_SERVICE"

.field private static final TAG:Ljava/lang/String; = "Vvm3Subscriber"

.field private static final TRANSACTION_ID_TAG:Ljava/lang/String; = "transactionid"

.field static final VMG_URL_KEY:Ljava/lang/String; = "vmg_url"

.field private static final VMG_XML_REQUEST_FORMAT:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><VMGVVMRequest>  <MessageHeader>    <transactionid>%1$s</transactionid>  </MessageHeader>  <MessageBody>    <mdn>%2$s</mdn>    <operation>%3$s</operation>    <source>Device</source>    <devicemodel>%4$s</devicemodel>  </MessageBody></VMGVVMRequest>"

.field private static final VVM3_SUBSCRIBE_LINK_DEFAULT_PATTERNS:Ljava/lang/String; = "[\"(?i)Subscribe to Basic Visual Voice Mail\",\"(?i)Subscribe to Basic Visual Voicemail\"]"

.field static final VVM3_SUBSCRIBE_LINK_PATTERNS_JSON_ARRAY:Ljava/lang/String; = "vvm3_subscribe_link_pattern_json_array"


# instance fields
.field private final mData:Landroid/os/Bundle;

.field private final mHandle:Landroid/telecom/PhoneAccountHandle;

.field private final mHelper:Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

.field private final mNumber:Ljava/lang/String;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;

.field private final mStatus:Lcom/android/voicemail/impl/VoicemailStatus$Editor;

.field private final mTask:Lcom/android/voicemail/impl/ActivationTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 157
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    .line 158
    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/voicemail/impl/ActivationTask;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Landroid/os/Bundle;)V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-static {}, Lcom/android/voicemail/impl/Assert;->isNotMainThread()V

    .line 169
    iput-object p1, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->mTask:Lcom/android/voicemail/impl/ActivationTask;

    .line 170
    iput-object p2, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->mHandle:Landroid/telecom/PhoneAccountHandle;

    .line 171
    iput-object p3, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->mHelper:Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    .line 172
    iput-object p4, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->mStatus:Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    .line 173
    iput-object p5, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->mData:Landroid/os/Bundle;

    .line 179
    invoke-virtual {p3}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/telephony/TelephonyManager;

    .line 180
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget-object p2, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->mHandle:Landroid/telecom/PhoneAccountHandle;

    .line 181
    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->createForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    .line 182
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->mNumber:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;)Ljava/lang/String;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method private clickSubscribeLink(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$ProvisioningException;
        }
    .end annotation

    const-string v0, "Vvm3Subscriber"

    const-string v1, "Clicking subscribe link"

    .line 260
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v0

    .line 263
    new-instance v1, Lcom/android/volley/toolbox/StringRequest;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1, v0, v0}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 265
    iget-object p1, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {p1, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    const-wide/16 v1, 0x1e

    .line 268
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/volley/toolbox/RequestFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 270
    :goto_0
    iget-object v0, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->mHelper:Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    iget-object v1, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->mStatus:Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_SPG_CONNECTION_FAILED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v0, v1, v2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->handleEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    .line 271
    new-instance v0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$ProvisioningException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$ProvisioningException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createTransactionId()Ljava/lang/String;
    .locals 2

    .line 353
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private extractText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$ProvisioningException;
        }
    .end annotation

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">(.*)<\\/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 358
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 359
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    .line 360
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 362
    :cond_0
    new-instance p1, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$ProvisioningException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found in xml response"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$ProvisioningException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static findSubscribeLink(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$ProvisioningException;
        }
    .end annotation

    .line 333
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 336
    invoke-static {p1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    .line 337
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    .line 341
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p1, v5, v6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 342
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/regex/Pattern;

    .line 343
    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 344
    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 347
    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_2
    new-instance p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$ProvisioningException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Subscribe link not found: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$ProvisioningException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 334
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "empty patterns"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getSelfProvisionResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$ProvisioningException;
        }
    .end annotation

    const-string v0, "Vvm3Subscriber"

    const-string v1, "Retrieving self provisioning response"

    .line 230
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v0

    .line 234
    new-instance v1, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$1;

    const/4 v4, 0x1

    move-object v2, v1

    move-object v3, p0

    move-object v5, p1

    move-object v6, v0

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$1;-><init>(Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 250
    iget-object p1, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {p1, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    const-wide/16 v1, 0x1e

    .line 252
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/volley/toolbox/RequestFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->mHelper:Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    iget-object v1, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->mStatus:Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_SPG_CONNECTION_FAILED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v0, v1, v2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->handleEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    .line 255
    new-instance v0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$ProvisioningException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$ProvisioningException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSelfProvisioningGateway()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$ProvisioningException;
        }
    .end annotation

    const-string v0, "Vvm3Subscriber"

    const-string v1, "retrieving SPG URL"

    .line 219
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "retrieveSPGURL"

    .line 220
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->vvm3XmlRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "spgurl"

    .line 221
    invoke-direct {p0, v0, v1}, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->extractText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSubscribeLinkPatterns(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .line 315
    invoke-static {p0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object p0

    const-string/jumbo v0, "vvm3_subscribe_link_pattern_json_array"

    const-string v1, "[\"(?i)Subscribe to Basic Visual Voice Mail\",\"(?i)Subscribe to Basic Visual Voicemail\"]"

    .line 316
    invoke-interface {p0, v0, v1}, Lcom/android/dialer/configprovider/ConfigProvider;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 320
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 321
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_0

    .line 322
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse patterns"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processSubscription()V
    .locals 2

    .line 206
    :try_start_0
    invoke-direct {p0}, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->getSelfProvisioningGateway()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->getSelfProvisionResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->mHelper:Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    .line 209
    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->getSubscribeLinkPatterns(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->findSubscribeLink(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->clickSubscribeLink(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$ProvisioningException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 212
    invoke-virtual {v0}, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$ProvisioningException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vvm3Subscriber"

    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->mTask:Lcom/android/voicemail/impl/ActivationTask;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/ActivationTask;->fail()V

    :goto_0
    return-void
.end method

.method private vvm3XmlRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$ProvisioningException;
        }
    .end annotation

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending vvm3XmlRequest for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vvm3Subscriber"

    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->mData:Landroid/os/Bundle;

    const-string/jumbo v2, "vmg_url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    const-string/jumbo p1, "voicemailManagementGateway url unknown"

    .line 282
    invoke-static {v1, p1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 285
    :cond_0
    invoke-direct {p0}, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->createTransactionId()Ljava/lang/String;

    move-result-object v0

    .line 286
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->mNumber:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 p1, 0x3

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, p1

    const-string p1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><VMGVVMRequest>  <MessageHeader>    <transactionid>%1$s</transactionid>  </MessageHeader>  <MessageBody>    <mdn>%2$s</mdn>    <operation>%3$s</operation>    <source>Device</source>    <devicemodel>%4$s</devicemodel>  </MessageBody></VMGVVMRequest>"

    .line 287
    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 290
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object p1

    .line 291
    new-instance v1, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$2;

    const/4 v5, 0x1

    move-object v3, v1

    move-object v4, p0

    move-object v7, p1

    move-object v8, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$2;-><init>(Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V

    .line 298
    iget-object v2, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    const-wide/16 v1, 0x1e

    .line 301
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/volley/toolbox/RequestFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string/jumbo v1, "transactionid"

    .line 302
    invoke-direct {p0, p1, v1}, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->extractText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 303
    :cond_1
    new-instance p1, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$ProvisioningException;

    const-string/jumbo v0, "transactionId mismatch"

    invoke-direct {p1, v0}, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$ProvisioningException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 307
    :goto_0
    iget-object v0, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->mHelper:Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    iget-object v1, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->mStatus:Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_VMG_CONNECTION_FAILED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v0, v1, v2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->handleEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    .line 308
    new-instance v0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$ProvisioningException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$ProvisioningException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public subscribe()V
    .locals 4

    .line 187
    invoke-static {}, Lcom/android/voicemail/impl/Assert;->isNotMainThread()V

    const-string v0, "Vvm3Subscriber"

    const-string v1, "Subscribing"

    .line 190
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->mHelper:Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    iget-object v2, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->mHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v3, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->mStatus:Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    invoke-static {v1, v2, v3}, Lcom/android/voicemail/impl/sync/VvmNetworkRequest;->getNetwork(Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;

    move-result-object v1
    :try_end_0
    .catch Lcom/android/voicemail/impl/sync/VvmNetworkRequest$RequestFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :try_start_1
    invoke-virtual {v1}, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;->get()Landroid/net/Network;

    move-result-object v2

    const-string v3, "provisioning: network available"

    .line 194
    invoke-static {v0, v3}, Lcom/android/voicemail/impl/VvmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->mHelper:Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    .line 196
    invoke-virtual {v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$NetworkSpecifiedHurlStack;

    invoke-direct {v3, v2}, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$NetworkSpecifiedHurlStack;-><init>(Landroid/net/Network;)V

    invoke-static {v0, v3}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 197
    invoke-direct {p0}, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->processSubscription()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 198
    :try_start_2
    invoke-virtual {v1}, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;->close()V
    :try_end_2
    .catch Lcom/android/voicemail/impl/sync/VvmNetworkRequest$RequestFailedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 192
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_0

    .line 198
    :try_start_4
    invoke-virtual {v1}, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v2
    :try_end_5
    .catch Lcom/android/voicemail/impl/sync/VvmNetworkRequest$RequestFailedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 199
    :catch_0
    iget-object v0, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->mHelper:Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    iget-object v1, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->mStatus:Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_VMG_CONNECTION_FAILED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v0, v1, v2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->handleEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    .line 200
    iget-object v0, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->mTask:Lcom/android/voicemail/impl/ActivationTask;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/ActivationTask;->fail()V

    :cond_1
    :goto_1
    return-void
.end method
