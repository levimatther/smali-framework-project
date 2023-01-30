.class public interface abstract Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;
.super Ljava/lang/Object;
.source "ConferenceManagerPresenter.java"

# interfaces
.implements Lcom/android/incallui/baseui/Ui;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ConferenceManagerPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConferenceManagerUi"
.end annotation


# virtual methods
.method public abstract isFragmentVisible()Z
.end method

.method public abstract refreshCall(Lcom/android/incallui/call/DialerCall;)V
.end method

.method public abstract update(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/incallui/call/DialerCall;",
            ">;Z)V"
        }
    .end annotation
.end method
