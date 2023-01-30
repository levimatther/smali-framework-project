.class public Lcom/gsma/rcs/service/ipcalldraft/IPCallLog;
.super Ljava/lang/Object;
.source "IPCallLog.java"


# static fields
.field public static final AUDIO_ENCODING:Ljava/lang/String; = "audioEncoding"

.field public static final BASECOLUMN_ID:Ljava/lang/String; = "_id"

.field public static final CALL_ID:Ljava/lang/String; = "call_id"

.field public static final CONTACT:Ljava/lang/String; = "contact"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final REASON_CODE:Ljava/lang/String; = "reason_code"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final VIDEO_ENCODING:Ljava/lang/String; = "videoEncoding"

.field public static final WIDTH:Ljava/lang/String; = "width"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.gsma.services.rcs.provider.ipcall/ipcall"

    .line 40
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/gsma/rcs/service/ipcalldraft/IPCallLog;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
