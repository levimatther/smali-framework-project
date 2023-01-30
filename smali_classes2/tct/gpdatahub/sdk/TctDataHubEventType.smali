.class public final enum Ltct/gpdatahub/sdk/TctDataHubEventType;
.super Ljava/lang/Enum;
.source "TctDataHubEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltct/gpdatahub/sdk/TctDataHubEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltct/gpdatahub/sdk/TctDataHubEventType;

.field public static final enum TYPE_RECORD_BY_DATE:Ltct/gpdatahub/sdk/TctDataHubEventType;

.field public static final enum TYPE_RECORD_BY_TIME:Ltct/gpdatahub/sdk/TctDataHubEventType;

.field public static final enum TYPE_SELECT_CONTENT_FOR_FIREBASE:Ltct/gpdatahub/sdk/TctDataHubEventType;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Ltct/gpdatahub/sdk/TctDataHubEventType;

    const-string v1, "TYPE_RECORD_BY_DATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Ltct/gpdatahub/sdk/TctDataHubEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ltct/gpdatahub/sdk/TctDataHubEventType;->TYPE_RECORD_BY_DATE:Ltct/gpdatahub/sdk/TctDataHubEventType;

    .line 12
    new-instance v0, Ltct/gpdatahub/sdk/TctDataHubEventType;

    const-string v1, "TYPE_RECORD_BY_TIME"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1}, Ltct/gpdatahub/sdk/TctDataHubEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ltct/gpdatahub/sdk/TctDataHubEventType;->TYPE_RECORD_BY_TIME:Ltct/gpdatahub/sdk/TctDataHubEventType;

    .line 16
    new-instance v0, Ltct/gpdatahub/sdk/TctDataHubEventType;

    const-string v4, "TYPE_SELECT_CONTENT_FOR_FIREBASE"

    const/4 v5, 0x2

    invoke-direct {v0, v4, v5, v1}, Ltct/gpdatahub/sdk/TctDataHubEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ltct/gpdatahub/sdk/TctDataHubEventType;->TYPE_SELECT_CONTENT_FOR_FIREBASE:Ltct/gpdatahub/sdk/TctDataHubEventType;

    const/4 v1, 0x3

    new-array v1, v1, [Ltct/gpdatahub/sdk/TctDataHubEventType;

    .line 3
    sget-object v4, Ltct/gpdatahub/sdk/TctDataHubEventType;->TYPE_RECORD_BY_DATE:Ltct/gpdatahub/sdk/TctDataHubEventType;

    aput-object v4, v1, v2

    sget-object v2, Ltct/gpdatahub/sdk/TctDataHubEventType;->TYPE_RECORD_BY_TIME:Ltct/gpdatahub/sdk/TctDataHubEventType;

    aput-object v2, v1, v3

    aput-object v0, v1, v5

    sput-object v1, Ltct/gpdatahub/sdk/TctDataHubEventType;->$VALUES:[Ltct/gpdatahub/sdk/TctDataHubEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Ltct/gpdatahub/sdk/TctDataHubEventType;->name:Ljava/lang/String;

    return-void
.end method

.method public static getTypeRecordByDate()Ltct/gpdatahub/sdk/TctDataHubEventType;
    .locals 1

    .line 32
    sget-object v0, Ltct/gpdatahub/sdk/TctDataHubEventType;->TYPE_RECORD_BY_DATE:Ltct/gpdatahub/sdk/TctDataHubEventType;

    return-object v0
.end method

.method public static getTypeRecordByTime()Ltct/gpdatahub/sdk/TctDataHubEventType;
    .locals 1

    .line 36
    sget-object v0, Ltct/gpdatahub/sdk/TctDataHubEventType;->TYPE_RECORD_BY_TIME:Ltct/gpdatahub/sdk/TctDataHubEventType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ltct/gpdatahub/sdk/TctDataHubEventType;
    .locals 1

    .line 3
    const-class v0, Ltct/gpdatahub/sdk/TctDataHubEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltct/gpdatahub/sdk/TctDataHubEventType;

    return-object p0
.end method

.method public static values()[Ltct/gpdatahub/sdk/TctDataHubEventType;
    .locals 1

    .line 3
    sget-object v0, Ltct/gpdatahub/sdk/TctDataHubEventType;->$VALUES:[Ltct/gpdatahub/sdk/TctDataHubEventType;

    invoke-virtual {v0}, [Ltct/gpdatahub/sdk/TctDataHubEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltct/gpdatahub/sdk/TctDataHubEventType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubEventType;->name:Ljava/lang/String;

    return-object v0
.end method
