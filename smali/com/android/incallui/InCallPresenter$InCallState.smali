.class public final enum Lcom/android/incallui/InCallPresenter$InCallState;
.super Ljava/lang/Enum;
.source "InCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InCallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/incallui/InCallPresenter$InCallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/InCallPresenter$InCallState;

.field public static final enum INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

.field public static final enum INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

.field public static final enum NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

.field public static final enum OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

.field public static final enum PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

.field public static final enum WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1968
    new-instance v0, Lcom/android/incallui/InCallPresenter$InCallState;

    const-string v1, "NO_CALLS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/InCallPresenter$InCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 1971
    new-instance v0, Lcom/android/incallui/InCallPresenter$InCallState;

    const-string v1, "INCOMING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/InCallPresenter$InCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 1974
    new-instance v0, Lcom/android/incallui/InCallPresenter$InCallState;

    const-string v1, "INCALL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/InCallPresenter$InCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 1977
    new-instance v0, Lcom/android/incallui/InCallPresenter$InCallState;

    const-string v1, "WAITING_FOR_ACCOUNT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/incallui/InCallPresenter$InCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 1981
    new-instance v0, Lcom/android/incallui/InCallPresenter$InCallState;

    const-string v1, "PENDING_OUTGOING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/incallui/InCallPresenter$InCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 1984
    new-instance v0, Lcom/android/incallui/InCallPresenter$InCallState;

    const-string v1, "OUTGOING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/incallui/InCallPresenter$InCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/android/incallui/InCallPresenter$InCallState;

    .line 1966
    sget-object v8, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    aput-object v8, v1, v2

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->$VALUES:[Lcom/android/incallui/InCallPresenter$InCallState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1966
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 1

    .line 1966
    const-class v0, Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/incallui/InCallPresenter$InCallState;

    return-object p0
.end method

.method public static values()[Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 1

    .line 1966
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->$VALUES:[Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v0}, [Lcom/android/incallui/InCallPresenter$InCallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/InCallPresenter$InCallState;

    return-object v0
.end method


# virtual methods
.method public isConnectingOrConnected()Z
    .locals 1

    .line 1991
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isIncoming()Z
    .locals 1

    .line 1987
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
