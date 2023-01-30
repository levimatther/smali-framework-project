.class Lcom/android/incallui/InCallPresenter$4;
.super Landroid/telephony/PhoneStateListener;
.source "InCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 254
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {p1}, Lcom/android/incallui/InCallPresenter;->access$000(Lcom/android/incallui/InCallPresenter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/blocking/FilteredNumbersUtil;->hasRecentEmergencyCall(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {p1}, Lcom/android/incallui/InCallPresenter;->access$000(Lcom/android/incallui/InCallPresenter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/location/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 259
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$600(Lcom/android/incallui/InCallPresenter;)Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    .line 260
    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->access$500(Lcom/android/incallui/InCallPresenter;)Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;

    move-result-object v1

    .line 259
    invoke-virtual {v0, v1, p2, p1}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->isBlockedNumber(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
