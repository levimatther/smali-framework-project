.class public final enum Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;
.super Ljava/lang/Enum;
.source "HistoryResult.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

.field public static final enum INCOMING_CALL_COMPOSER:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

.field public static final INCOMING_CALL_COMPOSER_VALUE:I = 0x1

.field public static final enum INCOMING_POST_CALL:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

.field public static final INCOMING_POST_CALL_VALUE:I = 0x3

.field public static final enum OUTGOING_CALL_COMPOSER:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

.field public static final OUTGOING_CALL_COMPOSER_VALUE:I = 0x2

.field public static final enum OUTGOING_POST_CALL:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

.field public static final OUTGOING_POST_CALL_VALUE:I = 0x4

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 32
    new-instance v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    const-string v1, "INCOMING_CALL_COMPOSER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;->INCOMING_CALL_COMPOSER:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    .line 36
    new-instance v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    const-string v1, "OUTGOING_CALL_COMPOSER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;->OUTGOING_CALL_COMPOSER:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    .line 40
    new-instance v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    const-string v1, "INCOMING_POST_CALL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;->INCOMING_POST_CALL:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    .line 44
    new-instance v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    const-string v1, "OUTGOING_POST_CALL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;->OUTGOING_POST_CALL:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    new-array v1, v6, [Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    .line 27
    sget-object v6, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;->INCOMING_CALL_COMPOSER:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    aput-object v6, v1, v2

    sget-object v2, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;->OUTGOING_CALL_COMPOSER:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;->INCOMING_POST_CALL:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;->$VALUES:[Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    .line 93
    new-instance v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type$1;

    invoke-direct {v0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type$1;-><init>()V

    sput-object v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    iput p3, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 83
    :cond_0
    sget-object p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;->OUTGOING_POST_CALL:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    return-object p0

    .line 82
    :cond_1
    sget-object p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;->INCOMING_POST_CALL:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    return-object p0

    .line 81
    :cond_2
    sget-object p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;->OUTGOING_CALL_COMPOSER:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    return-object p0

    .line 80
    :cond_3
    sget-object p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;->INCOMING_CALL_COMPOSER:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;",
            ">;"
        }
    .end annotation

    .line 90
    sget-object v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    invoke-static {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;->forNumber(I)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;
    .locals 1

    .line 27
    const-class v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    return-object p0
.end method

.method public static values()[Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;
    .locals 1

    .line 27
    sget-object v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;->$VALUES:[Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    invoke-virtual {v0}, [Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;->value:I

    return v0
.end method
