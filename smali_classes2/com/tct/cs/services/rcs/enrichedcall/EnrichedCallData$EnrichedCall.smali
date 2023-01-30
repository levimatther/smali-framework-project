.class public Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$EnrichedCall;
.super Ljava/lang/Object;
.source "EnrichedCallData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnrichedCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$EnrichedCall$MimeType;
    }
.end annotation


# static fields
.field public static final BASECOLUMN_ID:Ljava/lang/String; = "_id"

.field public static final CALL_LOG_ID:Ljava/lang/String; = "call_log_id"

.field public static final CALL_SESSION_ID:Ljava/lang/String; = "call_session_id"

.field public static final CONTACT:Ljava/lang/String; = "contact"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_UPDATE:Landroid/net/Uri;

.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field public static final FILE_URI:Ljava/lang/String; = "file_uri"

.field public static final MESSAGE_ID:Ljava/lang/String; = "msg_id"

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final REASON_CODE:Ljava/lang/String; = "reason_code"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.tct.cs.rcs.services.enrichedcall/enrichedcall"

    .line 220
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$EnrichedCall;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.tct.cs.rcs.services.enrichedcall/enrichedcall/update"

    .line 223
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$EnrichedCall;->CONTENT_URI_UPDATE:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
