.class public final enum Lcom/android/dialer/callintent/SpeedDialContactType$Type;
.super Ljava/lang/Enum;
.source "SpeedDialContactType.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/callintent/SpeedDialContactType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/dialer/callintent/SpeedDialContactType$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dialer/callintent/SpeedDialContactType$Type;

.field public static final enum FREQUENT_CONTACT:Lcom/android/dialer/callintent/SpeedDialContactType$Type;

.field public static final FREQUENT_CONTACT_VALUE:I = 0x3

.field public static final enum PINNED_CONTACT:Lcom/android/dialer/callintent/SpeedDialContactType$Type;

.field public static final PINNED_CONTACT_VALUE:I = 0x1

.field public static final enum STARRED_CONTACT:Lcom/android/dialer/callintent/SpeedDialContactType$Type;

.field public static final STARRED_CONTACT_VALUE:I = 0x2

.field public static final enum UNDEFINED:Lcom/android/dialer/callintent/SpeedDialContactType$Type;

.field public static final UNDEFINED_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/dialer/callintent/SpeedDialContactType$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 29
    new-instance v0, Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/dialer/callintent/SpeedDialContactType$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/callintent/SpeedDialContactType$Type;->UNDEFINED:Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    .line 33
    new-instance v0, Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    const-string v1, "PINNED_CONTACT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/dialer/callintent/SpeedDialContactType$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/callintent/SpeedDialContactType$Type;->PINNED_CONTACT:Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    .line 37
    new-instance v0, Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    const-string v1, "STARRED_CONTACT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/dialer/callintent/SpeedDialContactType$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/callintent/SpeedDialContactType$Type;->STARRED_CONTACT:Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    .line 41
    new-instance v0, Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    const-string v1, "FREQUENT_CONTACT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/android/dialer/callintent/SpeedDialContactType$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/callintent/SpeedDialContactType$Type;->FREQUENT_CONTACT:Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    .line 24
    sget-object v6, Lcom/android/dialer/callintent/SpeedDialContactType$Type;->UNDEFINED:Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    aput-object v6, v1, v2

    sget-object v2, Lcom/android/dialer/callintent/SpeedDialContactType$Type;->PINNED_CONTACT:Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/callintent/SpeedDialContactType$Type;->STARRED_CONTACT:Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/dialer/callintent/SpeedDialContactType$Type;->$VALUES:[Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    .line 90
    new-instance v0, Lcom/android/dialer/callintent/SpeedDialContactType$Type$1;

    invoke-direct {v0}, Lcom/android/dialer/callintent/SpeedDialContactType$Type$1;-><init>()V

    sput-object v0, Lcom/android/dialer/callintent/SpeedDialContactType$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput p3, p0, Lcom/android/dialer/callintent/SpeedDialContactType$Type;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/dialer/callintent/SpeedDialContactType$Type;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 80
    :cond_0
    sget-object p0, Lcom/android/dialer/callintent/SpeedDialContactType$Type;->FREQUENT_CONTACT:Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    return-object p0

    .line 79
    :cond_1
    sget-object p0, Lcom/android/dialer/callintent/SpeedDialContactType$Type;->STARRED_CONTACT:Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    return-object p0

    .line 78
    :cond_2
    sget-object p0, Lcom/android/dialer/callintent/SpeedDialContactType$Type;->PINNED_CONTACT:Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    return-object p0

    .line 77
    :cond_3
    sget-object p0, Lcom/android/dialer/callintent/SpeedDialContactType$Type;->UNDEFINED:Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/dialer/callintent/SpeedDialContactType$Type;",
            ">;"
        }
    .end annotation

    .line 87
    sget-object v0, Lcom/android/dialer/callintent/SpeedDialContactType$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/dialer/callintent/SpeedDialContactType$Type;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    invoke-static {p0}, Lcom/android/dialer/callintent/SpeedDialContactType$Type;->forNumber(I)Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dialer/callintent/SpeedDialContactType$Type;
    .locals 1

    .line 24
    const-class v0, Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    return-object p0
.end method

.method public static values()[Lcom/android/dialer/callintent/SpeedDialContactType$Type;
    .locals 1

    .line 24
    sget-object v0, Lcom/android/dialer/callintent/SpeedDialContactType$Type;->$VALUES:[Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    invoke-virtual {v0}, [Lcom/android/dialer/callintent/SpeedDialContactType$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/android/dialer/callintent/SpeedDialContactType$Type;->value:I

    return v0
.end method
