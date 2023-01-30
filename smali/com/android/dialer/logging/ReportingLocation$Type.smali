.class public final enum Lcom/android/dialer/logging/ReportingLocation$Type;
.super Ljava/lang/Enum;
.source "ReportingLocation.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/logging/ReportingLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/dialer/logging/ReportingLocation$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dialer/logging/ReportingLocation$Type;

.field public static final enum CALL_LOG_HISTORY:Lcom/android/dialer/logging/ReportingLocation$Type;

.field public static final CALL_LOG_HISTORY_VALUE:I = 0x1

.field public static final enum FEEDBACK_PROMPT:Lcom/android/dialer/logging/ReportingLocation$Type;

.field public static final FEEDBACK_PROMPT_VALUE:I = 0x2

.field public static final enum UNKNOWN_REPORTING_LOCATION:Lcom/android/dialer/logging/ReportingLocation$Type;

.field public static final UNKNOWN_REPORTING_LOCATION_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/dialer/logging/ReportingLocation$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 28
    new-instance v0, Lcom/android/dialer/logging/ReportingLocation$Type;

    const-string v1, "UNKNOWN_REPORTING_LOCATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/dialer/logging/ReportingLocation$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ReportingLocation$Type;->UNKNOWN_REPORTING_LOCATION:Lcom/android/dialer/logging/ReportingLocation$Type;

    .line 32
    new-instance v0, Lcom/android/dialer/logging/ReportingLocation$Type;

    const-string v1, "CALL_LOG_HISTORY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/dialer/logging/ReportingLocation$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ReportingLocation$Type;->CALL_LOG_HISTORY:Lcom/android/dialer/logging/ReportingLocation$Type;

    .line 36
    new-instance v0, Lcom/android/dialer/logging/ReportingLocation$Type;

    const-string v1, "FEEDBACK_PROMPT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/dialer/logging/ReportingLocation$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ReportingLocation$Type;->FEEDBACK_PROMPT:Lcom/android/dialer/logging/ReportingLocation$Type;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/dialer/logging/ReportingLocation$Type;

    .line 23
    sget-object v5, Lcom/android/dialer/logging/ReportingLocation$Type;->UNKNOWN_REPORTING_LOCATION:Lcom/android/dialer/logging/ReportingLocation$Type;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/dialer/logging/ReportingLocation$Type;->CALL_LOG_HISTORY:Lcom/android/dialer/logging/ReportingLocation$Type;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/dialer/logging/ReportingLocation$Type;->$VALUES:[Lcom/android/dialer/logging/ReportingLocation$Type;

    .line 80
    new-instance v0, Lcom/android/dialer/logging/ReportingLocation$Type$1;

    invoke-direct {v0}, Lcom/android/dialer/logging/ReportingLocation$Type$1;-><init>()V

    sput-object v0, Lcom/android/dialer/logging/ReportingLocation$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    iput p3, p0, Lcom/android/dialer/logging/ReportingLocation$Type;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/dialer/logging/ReportingLocation$Type;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 70
    :cond_0
    sget-object p0, Lcom/android/dialer/logging/ReportingLocation$Type;->FEEDBACK_PROMPT:Lcom/android/dialer/logging/ReportingLocation$Type;

    return-object p0

    .line 69
    :cond_1
    sget-object p0, Lcom/android/dialer/logging/ReportingLocation$Type;->CALL_LOG_HISTORY:Lcom/android/dialer/logging/ReportingLocation$Type;

    return-object p0

    .line 68
    :cond_2
    sget-object p0, Lcom/android/dialer/logging/ReportingLocation$Type;->UNKNOWN_REPORTING_LOCATION:Lcom/android/dialer/logging/ReportingLocation$Type;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/dialer/logging/ReportingLocation$Type;",
            ">;"
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/android/dialer/logging/ReportingLocation$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/dialer/logging/ReportingLocation$Type;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    invoke-static {p0}, Lcom/android/dialer/logging/ReportingLocation$Type;->forNumber(I)Lcom/android/dialer/logging/ReportingLocation$Type;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dialer/logging/ReportingLocation$Type;
    .locals 1

    .line 23
    const-class v0, Lcom/android/dialer/logging/ReportingLocation$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/logging/ReportingLocation$Type;

    return-object p0
.end method

.method public static values()[Lcom/android/dialer/logging/ReportingLocation$Type;
    .locals 1

    .line 23
    sget-object v0, Lcom/android/dialer/logging/ReportingLocation$Type;->$VALUES:[Lcom/android/dialer/logging/ReportingLocation$Type;

    invoke-virtual {v0}, [Lcom/android/dialer/logging/ReportingLocation$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/dialer/logging/ReportingLocation$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/android/dialer/logging/ReportingLocation$Type;->value:I

    return v0
.end method
