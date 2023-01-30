.class final enum Lcom/android/dialer/app/TctActivity$NvError;
.super Ljava/lang/Enum;
.source "TctActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/TctActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NvError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/dialer/app/TctActivity$NvError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dialer/app/TctActivity$NvError;

.field public static final enum FAIL:Lcom/android/dialer/app/TctActivity$NvError;

.field public static final enum FULL:Lcom/android/dialer/app/TctActivity$NvError;

.field public static final enum INVALID_PARAMETER:Lcom/android/dialer/app/TctActivity$NvError;

.field public static final enum NOT_ACTIVE:Lcom/android/dialer/app/TctActivity$NvError;

.field public static final enum NOT_SUPPORTED:Lcom/android/dialer/app/TctActivity$NvError;

.field public static final enum OK:Lcom/android/dialer/app/TctActivity$NvError;

.field public static final enum READ_ONLY:Lcom/android/dialer/app/TctActivity$NvError;

.field public static final enum TOO_BIG:Lcom/android/dialer/app/TctActivity$NvError;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 166
    new-instance v0, Lcom/android/dialer/app/TctActivity$NvError;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/app/TctActivity$NvError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/app/TctActivity$NvError;->OK:Lcom/android/dialer/app/TctActivity$NvError;

    .line 168
    new-instance v0, Lcom/android/dialer/app/TctActivity$NvError;

    const-string v1, "FAIL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/dialer/app/TctActivity$NvError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/app/TctActivity$NvError;->FAIL:Lcom/android/dialer/app/TctActivity$NvError;

    .line 170
    new-instance v0, Lcom/android/dialer/app/TctActivity$NvError;

    const-string v1, "INVALID_PARAMETER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/dialer/app/TctActivity$NvError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/app/TctActivity$NvError;->INVALID_PARAMETER:Lcom/android/dialer/app/TctActivity$NvError;

    .line 172
    new-instance v0, Lcom/android/dialer/app/TctActivity$NvError;

    const-string v1, "FULL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/dialer/app/TctActivity$NvError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/app/TctActivity$NvError;->FULL:Lcom/android/dialer/app/TctActivity$NvError;

    .line 174
    new-instance v0, Lcom/android/dialer/app/TctActivity$NvError;

    const-string v1, "NOT_ACTIVE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/dialer/app/TctActivity$NvError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/app/TctActivity$NvError;->NOT_ACTIVE:Lcom/android/dialer/app/TctActivity$NvError;

    .line 176
    new-instance v0, Lcom/android/dialer/app/TctActivity$NvError;

    const-string v1, "READ_ONLY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/dialer/app/TctActivity$NvError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/app/TctActivity$NvError;->READ_ONLY:Lcom/android/dialer/app/TctActivity$NvError;

    .line 178
    new-instance v0, Lcom/android/dialer/app/TctActivity$NvError;

    const-string v1, "NOT_SUPPORTED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/dialer/app/TctActivity$NvError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/app/TctActivity$NvError;->NOT_SUPPORTED:Lcom/android/dialer/app/TctActivity$NvError;

    .line 180
    new-instance v0, Lcom/android/dialer/app/TctActivity$NvError;

    const-string v1, "TOO_BIG"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/dialer/app/TctActivity$NvError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/app/TctActivity$NvError;->TOO_BIG:Lcom/android/dialer/app/TctActivity$NvError;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/android/dialer/app/TctActivity$NvError;

    .line 164
    sget-object v10, Lcom/android/dialer/app/TctActivity$NvError;->OK:Lcom/android/dialer/app/TctActivity$NvError;

    aput-object v10, v1, v2

    sget-object v2, Lcom/android/dialer/app/TctActivity$NvError;->FAIL:Lcom/android/dialer/app/TctActivity$NvError;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/app/TctActivity$NvError;->INVALID_PARAMETER:Lcom/android/dialer/app/TctActivity$NvError;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/dialer/app/TctActivity$NvError;->FULL:Lcom/android/dialer/app/TctActivity$NvError;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/dialer/app/TctActivity$NvError;->NOT_ACTIVE:Lcom/android/dialer/app/TctActivity$NvError;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/dialer/app/TctActivity$NvError;->READ_ONLY:Lcom/android/dialer/app/TctActivity$NvError;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/dialer/app/TctActivity$NvError;->NOT_SUPPORTED:Lcom/android/dialer/app/TctActivity$NvError;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/android/dialer/app/TctActivity$NvError;->$VALUES:[Lcom/android/dialer/app/TctActivity$NvError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 164
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Lcom/android/dialer/app/TctActivity$NvError;
    .locals 1

    if-ltz p0, :cond_1

    .line 183
    invoke-static {}, Lcom/android/dialer/app/TctActivity$NvError;->values()[Lcom/android/dialer/app/TctActivity$NvError;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-static {}, Lcom/android/dialer/app/TctActivity$NvError;->values()[Lcom/android/dialer/app/TctActivity$NvError;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dialer/app/TctActivity$NvError;
    .locals 1

    .line 164
    const-class v0, Lcom/android/dialer/app/TctActivity$NvError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/app/TctActivity$NvError;

    return-object p0
.end method

.method public static values()[Lcom/android/dialer/app/TctActivity$NvError;
    .locals 1

    .line 164
    sget-object v0, Lcom/android/dialer/app/TctActivity$NvError;->$VALUES:[Lcom/android/dialer/app/TctActivity$NvError;

    invoke-virtual {v0}, [Lcom/android/dialer/app/TctActivity$NvError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/dialer/app/TctActivity$NvError;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .line 191
    invoke-virtual {p0}, Lcom/android/dialer/app/TctActivity$NvError;->ordinal()I

    move-result v0

    return v0
.end method
