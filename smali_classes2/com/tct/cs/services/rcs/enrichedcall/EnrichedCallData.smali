.class public Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData;
.super Ljava/lang/Object;
.source "EnrichedCallData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$EnrichedCall;,
        Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$CallSession;,
        Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final HISTORYLOG_MEMBER_ID:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.tct.cs.rcs.services.enrichedcall"

    .line 49
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
