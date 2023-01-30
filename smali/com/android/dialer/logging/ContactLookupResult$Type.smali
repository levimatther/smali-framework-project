.class public final enum Lcom/android/dialer/logging/ContactLookupResult$Type;
.super Ljava/lang/Enum;
.source "ContactLookupResult.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/logging/ContactLookupResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/dialer/logging/ContactLookupResult$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dialer/logging/ContactLookupResult$Type;

.field public static final enum EMERGENCY:Lcom/android/dialer/logging/ContactLookupResult$Type;

.field public static final EMERGENCY_VALUE:I = 0x5

.field public static final enum LOCAL_CACHE:Lcom/android/dialer/logging/ContactLookupResult$Type;

.field public static final enum LOCAL_CACHE_CEQUINT:Lcom/android/dialer/logging/ContactLookupResult$Type;

.field public static final LOCAL_CACHE_CEQUINT_VALUE:I = 0xf

.field public static final enum LOCAL_CACHE_CNAP:Lcom/android/dialer/logging/ContactLookupResult$Type;

.field public static final LOCAL_CACHE_CNAP_VALUE:I = 0xe

.field public static final enum LOCAL_CACHE_DIRECTORY:Lcom/android/dialer/logging/ContactLookupResult$Type;

.field public static final LOCAL_CACHE_DIRECTORY_VALUE:I = 0xa

.field public static final enum LOCAL_CACHE_EXTENDED:Lcom/android/dialer/logging/ContactLookupResult$Type;

.field public static final LOCAL_CACHE_EXTENDED_VALUE:I = 0xb

.field public static final enum LOCAL_CACHE_PLACES:Lcom/android/dialer/logging/ContactLookupResult$Type;

.field public static final LOCAL_CACHE_PLACES_VALUE:I = 0xc

.field public static final enum LOCAL_CACHE_PROFILE:Lcom/android/dialer/logging/ContactLookupResult$Type;

.field public static final LOCAL_CACHE_PROFILE_VALUE:I = 0xd

.field public static final enum LOCAL_CACHE_UNKNOWN:Lcom/android/dialer/logging/ContactLookupResult$Type;

.field public static final LOCAL_CACHE_UNKNOWN_VALUE:I = 0x9

.field public static final LOCAL_CACHE_VALUE:I = 0x3

.field public static final enum LOCAL_CONTACT:Lcom/android/dialer/logging/ContactLookupResult$Type;

.field public static final LOCAL_CONTACT_VALUE:I = 0x2

.field public static final enum NOT_FOUND:Lcom/android/dialer/logging/ContactLookupResult$Type;

.field public static final NOT_FOUND_VALUE:I = 0x1

.field public static final enum REMOTE:Lcom/android/dialer/logging/ContactLookupResult$Type;

.field public static final enum REMOTE_PLACES:Lcom/android/dialer/logging/ContactLookupResult$Type;

.field public static final REMOTE_PLACES_VALUE:I = 0x7

.field public static final enum REMOTE_PROFILE:Lcom/android/dialer/logging/ContactLookupResult$Type;

.field public static final REMOTE_PROFILE_VALUE:I = 0x8

.field public static final REMOTE_VALUE:I = 0x4

.field public static final enum UNKNOWN_LOOKUP_RESULT_TYPE:Lcom/android/dialer/logging/ContactLookupResult$Type;

.field public static final UNKNOWN_LOOKUP_RESULT_TYPE_VALUE:I = 0x0

.field public static final enum VOICEMAIL:Lcom/android/dialer/logging/ContactLookupResult$Type;

.field public static final VOICEMAIL_VALUE:I = 0x6

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/dialer/logging/ContactLookupResult$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 28
    new-instance v0, Lcom/android/dialer/logging/ContactLookupResult$Type;

    const-string v1, "UNKNOWN_LOOKUP_RESULT_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/dialer/logging/ContactLookupResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ContactLookupResult$Type;->UNKNOWN_LOOKUP_RESULT_TYPE:Lcom/android/dialer/logging/ContactLookupResult$Type;

    .line 36
    new-instance v0, Lcom/android/dialer/logging/ContactLookupResult$Type;

    const-string v1, "NOT_FOUND"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/dialer/logging/ContactLookupResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ContactLookupResult$Type;->NOT_FOUND:Lcom/android/dialer/logging/ContactLookupResult$Type;

    .line 44
    new-instance v0, Lcom/android/dialer/logging/ContactLookupResult$Type;

    const-string v1, "LOCAL_CONTACT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/dialer/logging/ContactLookupResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ContactLookupResult$Type;->LOCAL_CONTACT:Lcom/android/dialer/logging/ContactLookupResult$Type;

    .line 52
    new-instance v0, Lcom/android/dialer/logging/ContactLookupResult$Type;

    const-string v1, "LOCAL_CACHE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/android/dialer/logging/ContactLookupResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ContactLookupResult$Type;->LOCAL_CACHE:Lcom/android/dialer/logging/ContactLookupResult$Type;

    .line 60
    new-instance v0, Lcom/android/dialer/logging/ContactLookupResult$Type;

    const-string v1, "REMOTE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/android/dialer/logging/ContactLookupResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ContactLookupResult$Type;->REMOTE:Lcom/android/dialer/logging/ContactLookupResult$Type;

    .line 68
    new-instance v0, Lcom/android/dialer/logging/ContactLookupResult$Type;

    const-string v1, "EMERGENCY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/android/dialer/logging/ContactLookupResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ContactLookupResult$Type;->EMERGENCY:Lcom/android/dialer/logging/ContactLookupResult$Type;

    .line 76
    new-instance v0, Lcom/android/dialer/logging/ContactLookupResult$Type;

    const-string v1, "VOICEMAIL"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/android/dialer/logging/ContactLookupResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ContactLookupResult$Type;->VOICEMAIL:Lcom/android/dialer/logging/ContactLookupResult$Type;

    .line 84
    new-instance v0, Lcom/android/dialer/logging/ContactLookupResult$Type;

    const-string v1, "REMOTE_PLACES"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/android/dialer/logging/ContactLookupResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ContactLookupResult$Type;->REMOTE_PLACES:Lcom/android/dialer/logging/ContactLookupResult$Type;

    .line 92
    new-instance v0, Lcom/android/dialer/logging/ContactLookupResult$Type;

    const-string v1, "REMOTE_PROFILE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/android/dialer/logging/ContactLookupResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ContactLookupResult$Type;->REMOTE_PROFILE:Lcom/android/dialer/logging/ContactLookupResult$Type;

    .line 101
    new-instance v0, Lcom/android/dialer/logging/ContactLookupResult$Type;

    const-string v1, "LOCAL_CACHE_UNKNOWN"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/android/dialer/logging/ContactLookupResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ContactLookupResult$Type;->LOCAL_CACHE_UNKNOWN:Lcom/android/dialer/logging/ContactLookupResult$Type;

    .line 110
    new-instance v0, Lcom/android/dialer/logging/ContactLookupResult$Type;

    const-string v1, "LOCAL_CACHE_DIRECTORY"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/android/dialer/logging/ContactLookupResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ContactLookupResult$Type;->LOCAL_CACHE_DIRECTORY:Lcom/android/dialer/logging/ContactLookupResult$Type;

    .line 119
    new-instance v0, Lcom/android/dialer/logging/ContactLookupResult$Type;

    const-string v1, "LOCAL_CACHE_EXTENDED"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/android/dialer/logging/ContactLookupResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ContactLookupResult$Type;->LOCAL_CACHE_EXTENDED:Lcom/android/dialer/logging/ContactLookupResult$Type;

    .line 128
    new-instance v0, Lcom/android/dialer/logging/ContactLookupResult$Type;

    const-string v1, "LOCAL_CACHE_PLACES"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lcom/android/dialer/logging/ContactLookupResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ContactLookupResult$Type;->LOCAL_CACHE_PLACES:Lcom/android/dialer/logging/ContactLookupResult$Type;

    .line 137
    new-instance v0, Lcom/android/dialer/logging/ContactLookupResult$Type;

    const-string v1, "LOCAL_CACHE_PROFILE"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15}, Lcom/android/dialer/logging/ContactLookupResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ContactLookupResult$Type;->LOCAL_CACHE_PROFILE:Lcom/android/dialer/logging/ContactLookupResult$Type;

    .line 147
    new-instance v0, Lcom/android/dialer/logging/ContactLookupResult$Type;

    const-string v1, "LOCAL_CACHE_CNAP"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v15}, Lcom/android/dialer/logging/ContactLookupResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ContactLookupResult$Type;->LOCAL_CACHE_CNAP:Lcom/android/dialer/logging/ContactLookupResult$Type;

    .line 156
    new-instance v0, Lcom/android/dialer/logging/ContactLookupResult$Type;

    const-string v1, "LOCAL_CACHE_CEQUINT"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v15}, Lcom/android/dialer/logging/ContactLookupResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ContactLookupResult$Type;->LOCAL_CACHE_CEQUINT:Lcom/android/dialer/logging/ContactLookupResult$Type;

    const/16 v1, 0x10

    new-array v1, v1, [Lcom/android/dialer/logging/ContactLookupResult$Type;

    .line 23
    sget-object v16, Lcom/android/dialer/logging/ContactLookupResult$Type;->UNKNOWN_LOOKUP_RESULT_TYPE:Lcom/android/dialer/logging/ContactLookupResult$Type;

    aput-object v16, v1, v2

    sget-object v2, Lcom/android/dialer/logging/ContactLookupResult$Type;->NOT_FOUND:Lcom/android/dialer/logging/ContactLookupResult$Type;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/ContactLookupResult$Type;->LOCAL_CONTACT:Lcom/android/dialer/logging/ContactLookupResult$Type;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/dialer/logging/ContactLookupResult$Type;->LOCAL_CACHE:Lcom/android/dialer/logging/ContactLookupResult$Type;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/dialer/logging/ContactLookupResult$Type;->REMOTE:Lcom/android/dialer/logging/ContactLookupResult$Type;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/dialer/logging/ContactLookupResult$Type;->EMERGENCY:Lcom/android/dialer/logging/ContactLookupResult$Type;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/dialer/logging/ContactLookupResult$Type;->VOICEMAIL:Lcom/android/dialer/logging/ContactLookupResult$Type;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/dialer/logging/ContactLookupResult$Type;->REMOTE_PLACES:Lcom/android/dialer/logging/ContactLookupResult$Type;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/dialer/logging/ContactLookupResult$Type;->REMOTE_PROFILE:Lcom/android/dialer/logging/ContactLookupResult$Type;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/dialer/logging/ContactLookupResult$Type;->LOCAL_CACHE_UNKNOWN:Lcom/android/dialer/logging/ContactLookupResult$Type;

    aput-object v2, v1, v11

    sget-object v2, Lcom/android/dialer/logging/ContactLookupResult$Type;->LOCAL_CACHE_DIRECTORY:Lcom/android/dialer/logging/ContactLookupResult$Type;

    aput-object v2, v1, v12

    sget-object v2, Lcom/android/dialer/logging/ContactLookupResult$Type;->LOCAL_CACHE_EXTENDED:Lcom/android/dialer/logging/ContactLookupResult$Type;

    aput-object v2, v1, v13

    sget-object v2, Lcom/android/dialer/logging/ContactLookupResult$Type;->LOCAL_CACHE_PLACES:Lcom/android/dialer/logging/ContactLookupResult$Type;

    aput-object v2, v1, v14

    sget-object v2, Lcom/android/dialer/logging/ContactLookupResult$Type;->LOCAL_CACHE_PROFILE:Lcom/android/dialer/logging/ContactLookupResult$Type;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/ContactLookupResult$Type;->LOCAL_CACHE_CNAP:Lcom/android/dialer/logging/ContactLookupResult$Type;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/android/dialer/logging/ContactLookupResult$Type;->$VALUES:[Lcom/android/dialer/logging/ContactLookupResult$Type;

    .line 333
    new-instance v0, Lcom/android/dialer/logging/ContactLookupResult$Type$1;

    invoke-direct {v0}, Lcom/android/dialer/logging/ContactLookupResult$Type$1;-><init>()V

    sput-object v0, Lcom/android/dialer/logging/ContactLookupResult$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 343
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 344
    iput p3, p0, Lcom/android/dialer/logging/ContactLookupResult$Type;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/dialer/logging/ContactLookupResult$Type;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 323
    :pswitch_0
    sget-object p0, Lcom/android/dialer/logging/ContactLookupResult$Type;->LOCAL_CACHE_CEQUINT:Lcom/android/dialer/logging/ContactLookupResult$Type;

    return-object p0

    .line 322
    :pswitch_1
    sget-object p0, Lcom/android/dialer/logging/ContactLookupResult$Type;->LOCAL_CACHE_CNAP:Lcom/android/dialer/logging/ContactLookupResult$Type;

    return-object p0

    .line 321
    :pswitch_2
    sget-object p0, Lcom/android/dialer/logging/ContactLookupResult$Type;->LOCAL_CACHE_PROFILE:Lcom/android/dialer/logging/ContactLookupResult$Type;

    return-object p0

    .line 320
    :pswitch_3
    sget-object p0, Lcom/android/dialer/logging/ContactLookupResult$Type;->LOCAL_CACHE_PLACES:Lcom/android/dialer/logging/ContactLookupResult$Type;

    return-object p0

    .line 319
    :pswitch_4
    sget-object p0, Lcom/android/dialer/logging/ContactLookupResult$Type;->LOCAL_CACHE_EXTENDED:Lcom/android/dialer/logging/ContactLookupResult$Type;

    return-object p0

    .line 318
    :pswitch_5
    sget-object p0, Lcom/android/dialer/logging/ContactLookupResult$Type;->LOCAL_CACHE_DIRECTORY:Lcom/android/dialer/logging/ContactLookupResult$Type;

    return-object p0

    .line 317
    :pswitch_6
    sget-object p0, Lcom/android/dialer/logging/ContactLookupResult$Type;->LOCAL_CACHE_UNKNOWN:Lcom/android/dialer/logging/ContactLookupResult$Type;

    return-object p0

    .line 316
    :pswitch_7
    sget-object p0, Lcom/android/dialer/logging/ContactLookupResult$Type;->REMOTE_PROFILE:Lcom/android/dialer/logging/ContactLookupResult$Type;

    return-object p0

    .line 315
    :pswitch_8
    sget-object p0, Lcom/android/dialer/logging/ContactLookupResult$Type;->REMOTE_PLACES:Lcom/android/dialer/logging/ContactLookupResult$Type;

    return-object p0

    .line 314
    :pswitch_9
    sget-object p0, Lcom/android/dialer/logging/ContactLookupResult$Type;->VOICEMAIL:Lcom/android/dialer/logging/ContactLookupResult$Type;

    return-object p0

    .line 313
    :pswitch_a
    sget-object p0, Lcom/android/dialer/logging/ContactLookupResult$Type;->EMERGENCY:Lcom/android/dialer/logging/ContactLookupResult$Type;

    return-object p0

    .line 312
    :pswitch_b
    sget-object p0, Lcom/android/dialer/logging/ContactLookupResult$Type;->REMOTE:Lcom/android/dialer/logging/ContactLookupResult$Type;

    return-object p0

    .line 311
    :pswitch_c
    sget-object p0, Lcom/android/dialer/logging/ContactLookupResult$Type;->LOCAL_CACHE:Lcom/android/dialer/logging/ContactLookupResult$Type;

    return-object p0

    .line 310
    :pswitch_d
    sget-object p0, Lcom/android/dialer/logging/ContactLookupResult$Type;->LOCAL_CONTACT:Lcom/android/dialer/logging/ContactLookupResult$Type;

    return-object p0

    .line 309
    :pswitch_e
    sget-object p0, Lcom/android/dialer/logging/ContactLookupResult$Type;->NOT_FOUND:Lcom/android/dialer/logging/ContactLookupResult$Type;

    return-object p0

    .line 308
    :pswitch_f
    sget-object p0, Lcom/android/dialer/logging/ContactLookupResult$Type;->UNKNOWN_LOOKUP_RESULT_TYPE:Lcom/android/dialer/logging/ContactLookupResult$Type;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
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
            "Lcom/android/dialer/logging/ContactLookupResult$Type;",
            ">;"
        }
    .end annotation

    .line 330
    sget-object v0, Lcom/android/dialer/logging/ContactLookupResult$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/dialer/logging/ContactLookupResult$Type;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 303
    invoke-static {p0}, Lcom/android/dialer/logging/ContactLookupResult$Type;->forNumber(I)Lcom/android/dialer/logging/ContactLookupResult$Type;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dialer/logging/ContactLookupResult$Type;
    .locals 1

    .line 23
    const-class v0, Lcom/android/dialer/logging/ContactLookupResult$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/logging/ContactLookupResult$Type;

    return-object p0
.end method

.method public static values()[Lcom/android/dialer/logging/ContactLookupResult$Type;
    .locals 1

    .line 23
    sget-object v0, Lcom/android/dialer/logging/ContactLookupResult$Type;->$VALUES:[Lcom/android/dialer/logging/ContactLookupResult$Type;

    invoke-virtual {v0}, [Lcom/android/dialer/logging/ContactLookupResult$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/dialer/logging/ContactLookupResult$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 295
    iget v0, p0, Lcom/android/dialer/logging/ContactLookupResult$Type;->value:I

    return v0
.end method
