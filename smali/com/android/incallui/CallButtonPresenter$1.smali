.class synthetic Lcom/android/incallui/CallButtonPresenter$1;
.super Ljava/lang/Object;
.source "CallButtonPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallButtonPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$incallui$incall$protocol$InCallButtonUiDelegate$CallWay:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 351
    invoke-static {}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;->values()[Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/incallui/CallButtonPresenter$1;->$SwitchMap$com$android$incallui$incall$protocol$InCallButtonUiDelegate$CallWay:[I

    :try_start_0
    sget-object v1, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;->BY_DIALPAD:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

    invoke-virtual {v1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/incallui/CallButtonPresenter$1;->$SwitchMap$com$android$incallui$incall$protocol$InCallButtonUiDelegate$CallWay:[I

    sget-object v1, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;->BY_CONTACT:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

    invoke-virtual {v1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/incallui/CallButtonPresenter$1;->$SwitchMap$com$android$incallui$incall$protocol$InCallButtonUiDelegate$CallWay:[I

    sget-object v1, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;->BY_CALL_LOG:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

    invoke-virtual {v1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
