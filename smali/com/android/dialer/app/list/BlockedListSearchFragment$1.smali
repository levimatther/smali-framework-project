.class Lcom/android/dialer/app/list/BlockedListSearchFragment$1;
.super Ljava/lang/Object;
.source "BlockedListSearchFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/list/BlockedListSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/list/BlockedListSearchFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/list/BlockedListSearchFragment;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/dialer/app/list/BlockedListSearchFragment$1;->this$0:Lcom/android/dialer/app/list/BlockedListSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 53
    iget-object p2, p0, Lcom/android/dialer/app/list/BlockedListSearchFragment$1;->this$0:Lcom/android/dialer/app/list/BlockedListSearchFragment;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->setQueryString(Ljava/lang/String;)V

    return-void
.end method
