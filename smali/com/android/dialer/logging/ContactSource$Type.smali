.class public final enum Lcom/android/dialer/logging/ContactSource$Type;
.super Ljava/lang/Enum;
.source "ContactSource.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/logging/ContactSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/dialer/logging/ContactSource$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dialer/logging/ContactSource$Type;

.field public static final enum SOURCE_TYPE_CEQUINT_CALLER_ID:Lcom/android/dialer/logging/ContactSource$Type;

.field public static final SOURCE_TYPE_CEQUINT_CALLER_ID_VALUE:I = 0x6

.field public static final enum SOURCE_TYPE_CNAP:Lcom/android/dialer/logging/ContactSource$Type;

.field public static final SOURCE_TYPE_CNAP_VALUE:I = 0x5

.field public static final enum SOURCE_TYPE_DIRECTORY:Lcom/android/dialer/logging/ContactSource$Type;

.field public static final SOURCE_TYPE_DIRECTORY_VALUE:I = 0x1

.field public static final enum SOURCE_TYPE_EXTENDED:Lcom/android/dialer/logging/ContactSource$Type;

.field public static final SOURCE_TYPE_EXTENDED_VALUE:I = 0x2

.field public static final enum SOURCE_TYPE_PLACES:Lcom/android/dialer/logging/ContactSource$Type;

.field public static final SOURCE_TYPE_PLACES_VALUE:I = 0x3

.field public static final enum SOURCE_TYPE_PROFILE:Lcom/android/dialer/logging/ContactSource$Type;

.field public static final SOURCE_TYPE_PROFILE_VALUE:I = 0x4

.field public static final enum UNKNOWN_SOURCE_TYPE:Lcom/android/dialer/logging/ContactSource$Type;

.field public static final UNKNOWN_SOURCE_TYPE_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/dialer/logging/ContactSource$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 34
    new-instance v0, Lcom/android/dialer/logging/ContactSource$Type;

    const-string v1, "UNKNOWN_SOURCE_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/dialer/logging/ContactSource$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ContactSource$Type;->UNKNOWN_SOURCE_TYPE:Lcom/android/dialer/logging/ContactSource$Type;

    .line 42
    new-instance v0, Lcom/android/dialer/logging/ContactSource$Type;

    const-string v1, "SOURCE_TYPE_DIRECTORY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/dialer/logging/ContactSource$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ContactSource$Type;->SOURCE_TYPE_DIRECTORY:Lcom/android/dialer/logging/ContactSource$Type;

    .line 50
    new-instance v0, Lcom/android/dialer/logging/ContactSource$Type;

    const-string v1, "SOURCE_TYPE_EXTENDED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/dialer/logging/ContactSource$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ContactSource$Type;->SOURCE_TYPE_EXTENDED:Lcom/android/dialer/logging/ContactSource$Type;

    .line 58
    new-instance v0, Lcom/android/dialer/logging/ContactSource$Type;

    const-string v1, "SOURCE_TYPE_PLACES"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/android/dialer/logging/ContactSource$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ContactSource$Type;->SOURCE_TYPE_PLACES:Lcom/android/dialer/logging/ContactSource$Type;

    .line 66
    new-instance v0, Lcom/android/dialer/logging/ContactSource$Type;

    const-string v1, "SOURCE_TYPE_PROFILE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/android/dialer/logging/ContactSource$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ContactSource$Type;->SOURCE_TYPE_PROFILE:Lcom/android/dialer/logging/ContactSource$Type;

    .line 75
    new-instance v0, Lcom/android/dialer/logging/ContactSource$Type;

    const-string v1, "SOURCE_TYPE_CNAP"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/android/dialer/logging/ContactSource$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ContactSource$Type;->SOURCE_TYPE_CNAP:Lcom/android/dialer/logging/ContactSource$Type;

    .line 79
    new-instance v0, Lcom/android/dialer/logging/ContactSource$Type;

    const-string v1, "SOURCE_TYPE_CEQUINT_CALLER_ID"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/android/dialer/logging/ContactSource$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ContactSource$Type;->SOURCE_TYPE_CEQUINT_CALLER_ID:Lcom/android/dialer/logging/ContactSource$Type;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/android/dialer/logging/ContactSource$Type;

    .line 29
    sget-object v9, Lcom/android/dialer/logging/ContactSource$Type;->UNKNOWN_SOURCE_TYPE:Lcom/android/dialer/logging/ContactSource$Type;

    aput-object v9, v1, v2

    sget-object v2, Lcom/android/dialer/logging/ContactSource$Type;->SOURCE_TYPE_DIRECTORY:Lcom/android/dialer/logging/ContactSource$Type;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/ContactSource$Type;->SOURCE_TYPE_EXTENDED:Lcom/android/dialer/logging/ContactSource$Type;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/dialer/logging/ContactSource$Type;->SOURCE_TYPE_PLACES:Lcom/android/dialer/logging/ContactSource$Type;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/dialer/logging/ContactSource$Type;->SOURCE_TYPE_PROFILE:Lcom/android/dialer/logging/ContactSource$Type;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/dialer/logging/ContactSource$Type;->SOURCE_TYPE_CNAP:Lcom/android/dialer/logging/ContactSource$Type;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/android/dialer/logging/ContactSource$Type;->$VALUES:[Lcom/android/dialer/logging/ContactSource$Type;

    .line 164
    new-instance v0, Lcom/android/dialer/logging/ContactSource$Type$1;

    invoke-direct {v0}, Lcom/android/dialer/logging/ContactSource$Type$1;-><init>()V

    sput-object v0, Lcom/android/dialer/logging/ContactSource$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 175
    iput p3, p0, Lcom/android/dialer/logging/ContactSource$Type;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/dialer/logging/ContactSource$Type;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 154
    :pswitch_0
    sget-object p0, Lcom/android/dialer/logging/ContactSource$Type;->SOURCE_TYPE_CEQUINT_CALLER_ID:Lcom/android/dialer/logging/ContactSource$Type;

    return-object p0

    .line 153
    :pswitch_1
    sget-object p0, Lcom/android/dialer/logging/ContactSource$Type;->SOURCE_TYPE_CNAP:Lcom/android/dialer/logging/ContactSource$Type;

    return-object p0

    .line 152
    :pswitch_2
    sget-object p0, Lcom/android/dialer/logging/ContactSource$Type;->SOURCE_TYPE_PROFILE:Lcom/android/dialer/logging/ContactSource$Type;

    return-object p0

    .line 151
    :pswitch_3
    sget-object p0, Lcom/android/dialer/logging/ContactSource$Type;->SOURCE_TYPE_PLACES:Lcom/android/dialer/logging/ContactSource$Type;

    return-object p0

    .line 150
    :pswitch_4
    sget-object p0, Lcom/android/dialer/logging/ContactSource$Type;->SOURCE_TYPE_EXTENDED:Lcom/android/dialer/logging/ContactSource$Type;

    return-object p0

    .line 149
    :pswitch_5
    sget-object p0, Lcom/android/dialer/logging/ContactSource$Type;->SOURCE_TYPE_DIRECTORY:Lcom/android/dialer/logging/ContactSource$Type;

    return-object p0

    .line 148
    :pswitch_6
    sget-object p0, Lcom/android/dialer/logging/ContactSource$Type;->UNKNOWN_SOURCE_TYPE:Lcom/android/dialer/logging/ContactSource$Type;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/dialer/logging/ContactSource$Type;",
            ">;"
        }
    .end annotation

    .line 161
    sget-object v0, Lcom/android/dialer/logging/ContactSource$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/dialer/logging/ContactSource$Type;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    invoke-static {p0}, Lcom/android/dialer/logging/ContactSource$Type;->forNumber(I)Lcom/android/dialer/logging/ContactSource$Type;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dialer/logging/ContactSource$Type;
    .locals 1

    .line 29
    const-class v0, Lcom/android/dialer/logging/ContactSource$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/logging/ContactSource$Type;

    return-object p0
.end method

.method public static values()[Lcom/android/dialer/logging/ContactSource$Type;
    .locals 1

    .line 29
    sget-object v0, Lcom/android/dialer/logging/ContactSource$Type;->$VALUES:[Lcom/android/dialer/logging/ContactSource$Type;

    invoke-virtual {v0}, [Lcom/android/dialer/logging/ContactSource$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/dialer/logging/ContactSource$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/android/dialer/logging/ContactSource$Type;->value:I

    return v0
.end method
