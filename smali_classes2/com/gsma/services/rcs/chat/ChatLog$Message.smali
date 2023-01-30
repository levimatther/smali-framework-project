.class public Lcom/gsma/services/rcs/chat/ChatLog$Message;
.super Ljava/lang/Object;
.source "ChatLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/ChatLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Message"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent;,
        Lcom/gsma/services/rcs/chat/ChatLog$Message$Content;,
        Lcom/gsma/services/rcs/chat/ChatLog$Message$MimeType;
    }
.end annotation


# static fields
.field public static final BASECOLUMN_ID:Ljava/lang/String; = "_id"

.field public static final CHAT_ID:Ljava/lang/String; = "chat_id"

.field public static final CONTACT:Ljava/lang/String; = "contact"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTRIBUTION_ID:Ljava/lang/String; = "contribution_id"

.field public static final CONVERSATION_ID:Ljava/lang/String; = "conversation_id"

.field public static final DEVICE_NAME:Ljava/lang/String; = "device_name"

.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field public static final EXPIRED_DELIVERY:Ljava/lang/String; = "expired_delivery"

.field public static final HISTORYLOG_MEMBER_ID:I = 0x1

.field public static final LINE:Ljava/lang/String; = "line"

.field public static final MESSAGE_ID:Ljava/lang/String; = "msg_id"

.field public static final MESSAGE_UID:Ljava/lang/String; = "message_uid"

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final PN_OBJECT_ICON_URL:Ljava/lang/String; = "objectIconURL"

.field public static final PN_OBJECT_URL:Ljava/lang/String; = "objectURL"

.field public static final PN_RESOURCE_URL:Ljava/lang/String; = "resourceURL"

.field public static final READ_STATUS:Ljava/lang/String; = "read_status"

.field public static final REASON_CODE:Ljava/lang/String; = "reason_code"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TIMESTAMP_DELIVERED:Ljava/lang/String; = "timestamp_delivered"

.field public static final TIMESTAMP_DISPLAYED:Ljava/lang/String; = "timestamp_displayed"

.field public static final TIMESTAMP_SENT:Ljava/lang/String; = "timestamp_sent"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.gsma.services.rcs.provider.chat/chatmessage"

    .line 222
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
