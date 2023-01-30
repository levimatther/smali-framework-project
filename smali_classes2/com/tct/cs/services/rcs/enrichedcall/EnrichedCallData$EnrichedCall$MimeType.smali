.class public Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$EnrichedCall$MimeType;
.super Ljava/lang/Object;
.source "EnrichedCallData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$EnrichedCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MimeType"
.end annotation


# static fields
.field public static final BOT_MESSAGE:Ljava/lang/String; = "application/vnd.gsma.botmessage"

.field public static final BOT_SHARED_CLIENT_DATA:Ljava/lang/String; = "application/vnd.gsma.botsharedclientdata"

.field public static final BOT_SUGGESTION:Ljava/lang/String; = "application/vnd.gsma.botsuggestion"

.field public static final GEOLOC_MESSAGE:Ljava/lang/String; = "application/geoloc"

.field public static final GROUPCHAT_EVENT:Ljava/lang/String; = "rcs/groupchat-event"

.field public static final GROUP_CONFERENCE_INFO:Ljava/lang/String; = "application/conference-info+xml"

.field public static final MULTIPART_RELATED:Ljava/lang/String; = "multipart/related"

.field public static final SUGGESTION_RESPONSE:Ljava/lang/String; = "application/vnd.gsma.botsuggestion.response"

.field public static final TEXT_MESSAGE:Ljava/lang/String; = "text/plain"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
