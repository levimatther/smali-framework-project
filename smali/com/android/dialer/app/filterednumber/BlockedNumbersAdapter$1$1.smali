.class Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter$1$1;
.super Ljava/lang/Object;
.source "BlockedNumbersAdapter.java"

# interfaces
.implements Lcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter$1;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter$1;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter$1$1;->this$1:Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeFilteredNumberUndo()V
    .locals 0

    return-void
.end method

.method public onFilterNumberSuccess()V
    .locals 0

    return-void
.end method

.method public onUnfilterNumberSuccess()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter$1$1;->this$1:Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter$1;

    iget-object v0, v0, Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/InteractionEvent$Type;->UNBLOCK_NUMBER_MANAGEMENT_SCREEN:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 78
    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logInteraction(Lcom/android/dialer/logging/InteractionEvent$Type;)V

    return-void
.end method
