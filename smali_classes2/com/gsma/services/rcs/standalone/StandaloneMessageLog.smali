.class public Lcom/gsma/services/rcs/standalone/StandaloneMessageLog;
.super Ljava/lang/Object;
.source "StandaloneMessageLog.java"


# static fields
.field public static final BASECOLUMN_ID:Ljava/lang/String; = "_id"

.field public static final CHAT_ID:Ljava/lang/String; = "chat_id"

.field public static final CONTACT:Ljava/lang/String; = "contact"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTRIBUTION_ID:Ljava/lang/String; = "contribution_id"

.field public static final CONVERSATION_ID:Ljava/lang/String; = "conversation_id"

.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field public static final DISPOSITION:Ljava/lang/String; = "disposition"

.field public static final EXPIRED_DELIVERY:Ljava/lang/String; = "expired_delivery"

.field public static final HISTORYLOG_MEMBER_ID:I = 0x6

.field public static final INREPLYTO_CONTRIBUTION_ID:Ljava/lang/String; = "in_replyto_contribution_id"

.field public static final KEY_MESSAGE_ID:Ljava/lang/String; = "msg_id"

.field public static final MESSAGE_UID:Ljava/lang/String; = "message_uid"

.field public static final READ_STATUS:Ljava/lang/String; = "read_status"

.field public static final REASON_CODE:Ljava/lang/String; = "reason_code"

.field public static final SIZE:Ljava/lang/String; = "size"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TIMESTAMP_DELIVERED:Ljava/lang/String; = "timestamp_delivered"

.field public static final TIMESTAMP_DISPLAYED:Ljava/lang/String; = "timestamp_displayed"

.field public static final TIMESTAMP_SENT:Ljava/lang/String; = "timestamp_sent"

.field public static final TRANSFERRED:Ljava/lang/String; = "transferred"

.field public static final UNKNOWN_EXPIRATION:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.gsma.services.rcs.provider.standalonemessage/standalonemessage"

    .line 43
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessageLog;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
