.class public abstract Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;
.super Ljava/lang/Object;
.source "EnrichedCallCapabilities.java"


# static fields
.field public static final NO_CAPABILITIES:Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-static {v0, v0, v0}, Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;->create(ZZZ)Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;->NO_CAPABILITIES:Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(ZZZ)Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;
    .locals 1

    .line 30
    new-instance v0, Lcom/android/dialer/enrichedcall/AutoValue_EnrichedCallCapabilities;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/dialer/enrichedcall/AutoValue_EnrichedCallCapabilities;-><init>(ZZZ)V

    return-object v0
.end method


# virtual methods
.method public abstract supportsCallComposer()Z
.end method

.method public abstract supportsPostCall()Z
.end method

.method public abstract supportsVideoShare()Z
.end method
