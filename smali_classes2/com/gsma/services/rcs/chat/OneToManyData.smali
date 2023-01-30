.class public Lcom/gsma/services/rcs/chat/OneToManyData;
.super Ljava/lang/Object;
.source "OneToManyData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/chat/OneToManyData$ReasonCode;,
        Lcom/gsma/services/rcs/chat/OneToManyData$Status;
    }
.end annotation


# static fields
.field public static final CHAT_ID:Ljava/lang/String; = "chat_id"

.field public static final CONTACT:Ljava/lang/String; = "contact"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTRIBUTION_Id:Ljava/lang/String; = "contribution_id"

.field public static final CONVERSATION_Id:Ljava/lang/String; = "conversation_id"

.field public static final LINE:Ljava/lang/String; = "line"

.field public static final MESSAGE_ID:Ljava/lang/String; = "msg_id"

.field public static final MIME_TYPE:Ljava/lang/String; = "mimetype"

.field public static final REASON_CODE:Ljava/lang/String; = "reason_code"

.field public static final RELATE_MESSAGE_ID:Ljava/lang/String; = "relate_message_id"

.field public static final SIZE:Ljava/lang/String; = "size"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final TECHNOLOGY:Ljava/lang/String; = "technology"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TIMESTAMP_DELIVERY:Ljava/lang/String; = "timestamp_delivery"

.field public static final TIMESTAMP_DISPLAY:Ljava/lang/String; = "timestamp_display"

.field public static final TIMESTAMP_EXPIRY:Ljava/lang/String; = "timestamp_expiry"

.field public static final TIMESTAMP_SENT:Ljava/lang/String; = "timestamp_sent"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.gsma.rcs.chat/onetomany"

    .line 14
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/chat/OneToManyData;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
