.class public Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallUtils;
.super Ljava/lang/Object;
.source "EnrichedCallUtils.java"


# static fields
.field public static final CALL_COMPOSER_CONTENT_ACCEPT_TYPE:[Ljava/lang/String;

.field public static final CALL_COMPOSER_CONTENT_ACCEPT_WRAPPED_TYPE:[Ljava/lang/String;

.field public static final CALL_COMPOSER_SERVICE_ID:Ljava/lang/String; = "gsma.callcomposer"

.field public static final POST_CALL_CONTENT_ACCEPT_TYPE:[Ljava/lang/String;

.field public static final POST_CALL_SERVICE_ID:Ljava/lang/String; = "gsma.callunanswered"

.field public static final SHARED_MAP_SERVICE_ID:Ljava/lang/String; = "gsma.sharedmap"

.field public static final SHARED_SKETCH_SERVICE_ID:Ljava/lang/String; = "gsma.sharedsketch"

.field public static final SHARE_MAP_CONTENT_ACCEPT_TYPE:[Ljava/lang/String;

.field public static final SHARE_SKETCH_CONTENT_ACCEPT_TYPE:[Ljava/lang/String;

.field public static final TYPE_DIRECTION_INCOMING:I = 0x1

.field public static final TYPE_DIRECTION_OUTGOING:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "application/vnd.gsma.sharedmap+xml"

    .line 78
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallUtils;->SHARE_MAP_CONTENT_ACCEPT_TYPE:[Ljava/lang/String;

    const-string v0, "application/vnd.gsma.sharedsketch+xml"

    .line 84
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallUtils;->SHARE_SKETCH_CONTENT_ACCEPT_TYPE:[Ljava/lang/String;

    const-string v0, "application/vnd.gsma.encall+xml"

    const-string v1, "application/vnd.gsma.rcs-ft-http+xml"

    .line 89
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallUtils;->POST_CALL_CONTENT_ACCEPT_TYPE:[Ljava/lang/String;

    const-string v2, "message/cpim"

    .line 94
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallUtils;->CALL_COMPOSER_CONTENT_ACCEPT_TYPE:[Ljava/lang/String;

    const-string v0, "message/imdn+xml"

    .line 99
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallUtils;->CALL_COMPOSER_CONTENT_ACCEPT_WRAPPED_TYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCallComposerType(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallUtils;->CALL_COMPOSER_CONTENT_ACCEPT_TYPE:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
