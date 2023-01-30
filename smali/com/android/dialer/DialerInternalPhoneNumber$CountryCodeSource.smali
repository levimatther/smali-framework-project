.class public final enum Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;
.super Ljava/lang/Enum;
.source "DialerInternalPhoneNumber.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/DialerInternalPhoneNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CountryCodeSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

.field public static final enum FROM_DEFAULT_COUNTRY:Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

.field public static final FROM_DEFAULT_COUNTRY_VALUE:I = 0x14

.field public static final enum FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

.field public static final FROM_NUMBER_WITHOUT_PLUS_SIGN_VALUE:I = 0xa

.field public static final enum FROM_NUMBER_WITH_IDD:Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

.field public static final FROM_NUMBER_WITH_IDD_VALUE:I = 0x5

.field public static final enum FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

.field public static final FROM_NUMBER_WITH_PLUS_SIGN_VALUE:I = 0x1

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 52
    new-instance v0, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    const-string v1, "FROM_NUMBER_WITH_PLUS_SIGN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    .line 61
    new-instance v0, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    const-string v1, "FROM_NUMBER_WITH_IDD"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_IDD:Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    .line 71
    new-instance v0, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    const-string v1, "FROM_NUMBER_WITHOUT_PLUS_SIGN"

    const/4 v4, 0x2

    const/16 v5, 0xa

    invoke-direct {v0, v1, v4, v5}, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    .line 84
    new-instance v0, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    const-string v1, "FROM_DEFAULT_COUNTRY"

    const/4 v5, 0x3

    const/16 v6, 0x14

    invoke-direct {v0, v1, v5, v6}, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    .line 42
    sget-object v6, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    aput-object v6, v1, v2

    sget-object v2, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_IDD:Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->$VALUES:[Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    .line 158
    new-instance v0, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource$1;

    invoke-direct {v0}, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource$1;-><init>()V

    sput-object v0, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 168
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 169
    iput p3, p0, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 148
    :cond_0
    sget-object p0, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    return-object p0

    .line 147
    :cond_1
    sget-object p0, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    return-object p0

    .line 146
    :cond_2
    sget-object p0, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_IDD:Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    return-object p0

    .line 145
    :cond_3
    sget-object p0, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;",
            ">;"
        }
    .end annotation

    .line 155
    sget-object v0, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    invoke-static {p0}, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->forNumber(I)Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;
    .locals 1

    .line 42
    const-class v0, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    return-object p0
.end method

.method public static values()[Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;
    .locals 1

    .line 42
    sget-object v0, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->$VALUES:[Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    invoke-virtual {v0}, [Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->value:I

    return v0
.end method
