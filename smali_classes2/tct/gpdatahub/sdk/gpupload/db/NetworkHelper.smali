.class public Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper;
.super Ljava/lang/Object;
.source "NetworkHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;,
        Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadBaseInfo;,
        Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadFixedRec;,
        Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadNormalRec;,
        Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$JsonInfoRequire;,
        Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$ServerConfigRequest;,
        Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$DefaultNetworkHandler;,
        Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$NetworkRequestCallback;
    }
.end annotation


# static fields
.field private static final CHARSET:Ljava/lang/String; = "utf-8"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "multipart/form-data"

.field private static final LINE_END:Ljava/lang/String; = "\r\n"

.field private static final PREFIX:Ljava/lang/String; = "--"

.field private static final SERVICE_KEY_PHONE_DATA:Ljava/lang/String; = "phoneData"

.field private static final SEVER_SUCCESS_HANDLE_TASK_RET_CODE:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "NetworkHelper"

.field private static final TIME_OUT:I = 0x4e20


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ltct/gpdatahub/sdk/gpupload/upload/model/Response;
    .locals 0

    .line 50
    invoke-static {p0}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper;->getJsonByInternet(Ljava/lang/String;)Ltct/gpdatahub/sdk/gpupload/upload/model/Response;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)Ltct/gpdatahub/sdk/gpupload/upload/model/Response;
    .locals 0

    .line 50
    invoke-static {p0, p1, p2}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper;->doUploadFile(Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)Ltct/gpdatahub/sdk/gpupload/upload/model/Response;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;)Ltct/gpdatahub/sdk/gpupload/upload/model/Response;
    .locals 0

    .line 50
    invoke-static {p0, p1}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper;->doJsonPost(Ljava/lang/String;Ljava/lang/String;)Ltct/gpdatahub/sdk/gpupload/upload/model/Response;

    move-result-object p0

    return-object p0
.end method

.method private static doJsonPost(Ljava/lang/String;Ljava/lang/String;)Ltct/gpdatahub/sdk/gpupload/upload/model/Response;
    .locals 5

    const-string v0, "NetworkHelper"

    .line 609
    new-instance v1, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;

    invoke-direct {v1}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;-><init>()V

    const/4 v2, 0x0

    .line 613
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 614
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 v3, 0x4e20

    .line 615
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 616
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v3, "POST"

    .line 617
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 618
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 619
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v3, 0x0

    .line 620
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    .line 621
    invoke-virtual {p0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Charset"

    const-string v4, "UTF-8"

    .line 622
    invoke-virtual {p0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Type"

    const-string v4, "application/json; charset=UTF-8"

    .line 624
    invoke-virtual {p0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "accept"

    const-string v4, "application/json"

    .line 627
    invoke-virtual {p0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 630
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "Content-Length"

    .line 631
    array-length v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 633
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 634
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 636
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doJsonPost: conn = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->setResultCode(I)V

    .line 638
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v4, 0xc8

    if-ne p1, v4, :cond_1

    .line 639
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 640
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 641
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->setResponse(Ljava/lang/Object;)V

    .line 642
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->getResponse()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper;->getProtocolCode(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->setProtocolCode(I)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, p1

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v2, p1

    goto/16 :goto_a

    :catch_0
    move-exception p0

    move-object v2, p1

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v2, p1

    goto :goto_5

    :catch_2
    move-exception p0

    move-object v2, p1

    goto/16 :goto_7

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 656
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 658
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    if-eqz v3, :cond_6

    .line 663
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d

    goto/16 :goto_9

    :catch_4
    move-exception p0

    goto :goto_3

    :catch_5
    move-exception p0

    goto :goto_5

    :catch_6
    move-exception p0

    goto :goto_7

    :catchall_1
    move-exception p0

    move-object v3, v2

    goto/16 :goto_a

    :catch_7
    move-exception p0

    move-object v3, v2

    .line 651
    :goto_3
    :try_start_5
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-virtual {v1, p0}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->setException(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_3

    .line 656
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_4

    :catch_8
    move-exception p0

    .line 658
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_4
    if-eqz v3, :cond_6

    .line 663
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_d

    goto :goto_9

    :catch_9
    move-exception p0

    move-object v3, v2

    .line 648
    :goto_5
    :try_start_8
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-virtual {v1, p0}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->setException(Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v2, :cond_4

    .line 656
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_6

    :catch_a
    move-exception p0

    .line 658
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_6
    if-eqz v3, :cond_6

    .line 663
    :try_start_a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d

    goto :goto_9

    :catch_b
    move-exception p0

    move-object v3, v2

    .line 645
    :goto_7
    :try_start_b
    invoke-virtual {p0}, Ljava/net/ProtocolException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-virtual {v1, p0}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->setException(Ljava/lang/Exception;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v2, :cond_5

    .line 656
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_8

    :catch_c
    move-exception p0

    .line 658
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_8
    if-eqz v3, :cond_6

    .line 663
    :try_start_d
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_9

    :catch_d
    move-exception p0

    .line 665
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_9
    return-object v1

    :catchall_2
    move-exception p0

    :goto_a
    if-eqz v2, :cond_7

    .line 656
    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_b

    :catch_e
    move-exception p1

    .line 658
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_b
    if-eqz v3, :cond_8

    .line 663
    :try_start_f
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_c

    :catch_f
    move-exception p1

    .line 665
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :cond_8
    :goto_c
    throw p0
.end method

.method private static doUploadFile(Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)Ltct/gpdatahub/sdk/gpupload/upload/model/Response;
    .locals 9

    const-string p2, "--"

    const-string v0, "\r\n"

    .line 683
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 686
    new-instance v2, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;

    invoke-direct {v2}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 691
    :try_start_0
    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 692
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 696
    :try_start_1
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 v5, 0x4e20

    .line 697
    invoke-virtual {p0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 698
    invoke-virtual {p0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 699
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 700
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v3, 0x0

    .line 701
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 702
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v5, "POST"

    .line 703
    invoke-virtual {p0, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v5, "Charset"

    const-string v6, "utf-8"

    .line 704
    invoke-virtual {p0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "connection"

    const-string v6, "keep-alive"

    .line 705
    invoke-virtual {p0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Content-Type"

    .line 706
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "multipart/form-data;boundary="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 711
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 714
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 715
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Content-Disposition: form-data; name=\"phoneData\"; filename=\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 715
    invoke-virtual {v6, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 721
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 p1, 0x400

    :try_start_3
    new-array p1, p1, [B

    .line 724
    :goto_0
    invoke-virtual {v5, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 725
    invoke-virtual {v6, p1, v3, v7}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_0

    .line 727
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 728
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 729
    invoke-virtual {v6, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 730
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 732
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 733
    invoke-virtual {v2, p1}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->setResultCode(I)V

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_2

    .line 735
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 736
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 737
    new-instance p2, Ljava/io/BufferedReader;

    invoke-direct {p2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string p1, ""

    .line 740
    :goto_1
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 741
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p2, "NetworkHelper"

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload file strResponse:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-virtual {v2, p1}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->setResponse(Ljava/lang/Object;)V

    .line 745
    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper;->getProtocolCode(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->setProtocolCode(I)V

    .line 747
    :cond_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception p0

    move-object p1, v4

    move-object v4, v5

    goto/16 :goto_10

    :catch_0
    move-exception p0

    move-object p1, v4

    move-object v4, v5

    goto :goto_2

    :catch_1
    move-exception p0

    move-object p1, v4

    move-object v4, v5

    goto :goto_4

    :catch_2
    move-exception p0

    move-object p1, v4

    move-object v4, v5

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object p1, v4

    goto/16 :goto_10

    :catch_3
    move-exception p0

    move-object p1, v4

    goto :goto_2

    :catch_4
    move-exception p0

    move-object p1, v4

    goto :goto_4

    :catch_5
    move-exception p0

    move-object p1, v4

    goto :goto_5

    :catch_6
    move-exception p0

    move-object p1, v4

    move-object v6, p1

    .line 755
    :goto_2
    :try_start_4
    invoke-virtual {v2, p0}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->setException(Ljava/lang/Exception;)V

    .line 756
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;)V

    :goto_3
    move-object v5, v4

    move-object v4, p1

    goto :goto_6

    :catch_7
    move-exception p0

    move-object p1, v4

    move-object v6, p1

    .line 752
    :goto_4
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;)V

    .line 753
    invoke-virtual {v2, p0}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->setException(Ljava/lang/Exception;)V

    goto :goto_3

    :catch_8
    move-exception p0

    move-object p1, v4

    move-object v6, p1

    .line 749
    :goto_5
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;)V

    .line 750
    invoke-virtual {v2, p0}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->setException(Ljava/lang/Exception;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :goto_6
    if-eqz v5, :cond_3

    .line 767
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    goto :goto_7

    :catch_9
    move-exception p0

    .line 769
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;)V

    :cond_3
    :goto_7
    if-eqz v6, :cond_4

    .line 774
    :try_start_6
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    goto :goto_8

    :catch_a
    move-exception p0

    .line 776
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;)V

    :cond_4
    :goto_8
    if-eqz v4, :cond_9

    .line 781
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_13

    goto/16 :goto_f

    :catch_b
    move-exception p0

    goto :goto_9

    :catch_c
    move-exception p0

    goto :goto_c

    :catchall_2
    move-exception p0

    move-object p1, v4

    move-object v6, p1

    goto/16 :goto_10

    :catch_d
    move-exception p0

    move-object p1, v4

    move-object v6, p1

    .line 762
    :goto_9
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;)V

    .line 763
    invoke-virtual {v2, p0}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->setException(Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v4, :cond_5

    .line 767
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_e

    goto :goto_a

    :catch_e
    move-exception p0

    .line 769
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;)V

    :cond_5
    :goto_a
    if-eqz v6, :cond_6

    .line 774
    :try_start_a
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_f

    goto :goto_b

    :catch_f
    move-exception p0

    .line 776
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;)V

    :cond_6
    :goto_b
    if-eqz p1, :cond_9

    .line 781
    :try_start_b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_13

    goto :goto_f

    :catch_10
    move-exception p0

    move-object p1, v4

    move-object v6, p1

    .line 759
    :goto_c
    :try_start_c
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v2, p0}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->setException(Ljava/lang/Exception;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v4, :cond_7

    .line 767
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_11

    goto :goto_d

    :catch_11
    move-exception p0

    .line 769
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;)V

    :cond_7
    :goto_d
    if-eqz v6, :cond_8

    .line 774
    :try_start_e
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_12

    goto :goto_e

    :catch_12
    move-exception p0

    .line 776
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;)V

    :cond_8
    :goto_e
    if-eqz p1, :cond_9

    .line 781
    :try_start_f
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_13

    goto :goto_f

    :catch_13
    move-exception p0

    .line 783
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;)V

    :cond_9
    :goto_f
    return-object v2

    :catchall_3
    move-exception p0

    :goto_10
    if-eqz v4, :cond_a

    .line 767
    :try_start_10
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_14

    goto :goto_11

    :catch_14
    move-exception p2

    .line 769
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;)V

    :cond_a
    :goto_11
    if-eqz v6, :cond_b

    .line 774
    :try_start_11
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_15

    goto :goto_12

    :catch_15
    move-exception p2

    .line 776
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;)V

    :cond_b
    :goto_12
    if-eqz p1, :cond_c

    .line 781
    :try_start_12
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_16

    goto :goto_13

    :catch_16
    move-exception p1

    .line 783
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;)V

    .line 784
    :cond_c
    :goto_13
    throw p0
.end method

.method private static getJsonByInternet(Ljava/lang/String;)Ltct/gpdatahub/sdk/gpupload/upload/model/Response;
    .locals 6

    const-string v0, "NetworkHelper"

    .line 554
    new-instance v1, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;

    invoke-direct {v1}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;-><init>()V

    .line 556
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 v2, 0x4e20

    .line 559
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 560
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 561
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->setResultCode(I)V

    const/16 v2, 0xc8

    .line 562
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->getResultCode()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    if-ne v2, v3, :cond_4

    const/4 v2, 0x0

    .line 565
    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 566
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_0
    const/4 v4, -0x1

    .line 569
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-eq v4, v5, :cond_0

    const/4 v4, 0x0

    .line 570
    invoke-virtual {p0, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 571
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_0

    :cond_0
    const-string v3, "utf-8"

    .line 573
    invoke-virtual {p0, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->setResponse(Ljava/lang/Object;)V

    .line 574
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getJsonByInternet]  response="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->getResponse()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 580
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    :catch_0
    move-exception p0

    .line 582
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {v0, p0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    .line 576
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_1

    .line 580
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_2
    move-exception p0

    .line 582
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 586
    :cond_1
    :goto_2
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->getResponse()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x1bc

    .line 589
    invoke-virtual {v1, p0}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->setResultCode(I)V

    .line 591
    :cond_2
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->getResponse()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper;->getProtocolCode(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->setProtocolCode(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :goto_3
    if-eqz v2, :cond_3

    .line 580
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    :catch_3
    move-exception v2

    .line 582
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_3
    :goto_4
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    move-exception p0

    .line 594
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    invoke-virtual {v1, p0}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->setException(Ljava/lang/Exception;)V

    :cond_4
    :goto_5
    return-object v1
.end method

.method public static getProtocolCode(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    .line 837
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "code"

    .line 838
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 840
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getProtocolCode] eJson="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", strResponse="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", protocol="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method public static getTEyeIdFromServer(Landroid/content/Context;Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$NetworkRequestCallback;IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .line 94
    new-instance v7, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$DefaultNetworkHandler;

    invoke-direct {v7, p1}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$DefaultNetworkHandler;-><init>(Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$NetworkRequestCallback;)V

    .line 95
    new-instance p1, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$JsonInfoRequire;

    move-object v0, p1

    move-object v1, p0

    move-object v2, v7

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$JsonInfoRequire;-><init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v7, p1}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$DefaultNetworkHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static getTeyeIdFromJsonString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "NetworkHelper"

    const/4 v1, 0x0

    .line 820
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "code"

    .line 821
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    const/16 v3, 0xc8

    if-ne p0, v3, :cond_0

    const-string p0, "data"

    .line 823
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 826
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    :cond_0
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getTeyeIdFromJsonString] tTeyeId="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static isFitNetworkForUpload(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 804
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "on"

    const-string v2, "datahub"

    .line 805
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "upload_policy_flag"

    .line 806
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz p1, :cond_0

    .line 807
    invoke-static {p0, v1}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper;->isFitNetworkNow(Landroid/content/Context;I)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 809
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkHelper"

    invoke-static {p1, p0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static isFitNetworkNow(Landroid/content/Context;I)Z
    .locals 1

    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_0

    .line 794
    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_1

    .line 796
    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/NetworkUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static postBaseInfoToServer(Landroid/content/Context;Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$NetworkRequestCallback;IILandroid/os/Bundle;)V
    .locals 7

    .line 87
    new-instance v6, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$DefaultNetworkHandler;

    invoke-direct {v6, p1}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$DefaultNetworkHandler;-><init>(Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$NetworkRequestCallback;)V

    .line 88
    new-instance p1, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadBaseInfo;

    move-object v0, p1

    move-object v1, p0

    move-object v2, v6

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadBaseInfo;-><init>(Landroid/content/Context;Landroid/os/Handler;IILandroid/os/Bundle;)V

    invoke-virtual {v6, p1}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$DefaultNetworkHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static requestConfigFromServer(Landroid/content/Context;Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$NetworkRequestCallback;IILandroid/os/Bundle;)V
    .locals 7

    .line 68
    new-instance v6, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$DefaultNetworkHandler;

    invoke-direct {v6, p1}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$DefaultNetworkHandler;-><init>(Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$NetworkRequestCallback;)V

    .line 69
    new-instance p1, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$ServerConfigRequest;

    move-object v0, p1

    move-object v1, p0

    move-object v2, v6

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$ServerConfigRequest;-><init>(Landroid/content/Context;Landroid/os/Handler;IILandroid/os/Bundle;)V

    invoke-virtual {v6, p1}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$DefaultNetworkHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static requestUploadFixedRec(Landroid/content/Context;Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$NetworkRequestCallback;IILandroid/os/Bundle;)V
    .locals 7

    .line 81
    new-instance v6, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$DefaultNetworkHandler;

    invoke-direct {v6, p1}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$DefaultNetworkHandler;-><init>(Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$NetworkRequestCallback;)V

    .line 82
    new-instance p1, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadFixedRec;

    move-object v0, p1

    move-object v1, p0

    move-object v2, v6

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadFixedRec;-><init>(Landroid/content/Context;Landroid/os/Handler;IILandroid/os/Bundle;)V

    invoke-virtual {v6, p1}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$DefaultNetworkHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static requestUploadNormalRec(Landroid/content/Context;Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$NetworkRequestCallback;IILandroid/os/Bundle;)V
    .locals 7

    .line 75
    new-instance v6, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$DefaultNetworkHandler;

    invoke-direct {v6, p1}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$DefaultNetworkHandler;-><init>(Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$NetworkRequestCallback;)V

    .line 76
    new-instance p1, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadNormalRec;

    move-object v0, p1

    move-object v1, p0

    move-object v2, v6

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadNormalRec;-><init>(Landroid/content/Context;Landroid/os/Handler;IILandroid/os/Bundle;)V

    invoke-virtual {v6, p1}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$DefaultNetworkHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static sendHeadBeatToServer(Landroid/content/Context;Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$NetworkRequestCallback;IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .line 101
    new-instance v7, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$DefaultNetworkHandler;

    invoke-direct {v7, p1}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$DefaultNetworkHandler;-><init>(Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$NetworkRequestCallback;)V

    .line 102
    new-instance p1, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$JsonInfoRequire;

    move-object v0, p1

    move-object v1, p0

    move-object v2, v7

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$JsonInfoRequire;-><init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v7, p1}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$DefaultNetworkHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
