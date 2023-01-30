.class Lcom/android/dialer/callcomposer/MessageComposerFragment$1;
.super Ljava/lang/Object;
.source "MessageComposerFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/callcomposer/MessageComposerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/callcomposer/MessageComposerFragment;

.field final synthetic val$remainingChar:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/dialer/callcomposer/MessageComposerFragment;Landroid/widget/TextView;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/dialer/callcomposer/MessageComposerFragment$1;->this$0:Lcom/android/dialer/callcomposer/MessageComposerFragment;

    iput-object p2, p0, Lcom/android/dialer/callcomposer/MessageComposerFragment$1;->val$remainingChar:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/android/dialer/callcomposer/MessageComposerFragment$1;->val$remainingChar:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/dialer/callcomposer/MessageComposerFragment$1;->this$0:Lcom/android/dialer/callcomposer/MessageComposerFragment;

    invoke-static {v2}, Lcom/android/dialer/callcomposer/MessageComposerFragment;->access$000(Lcom/android/dialer/callcomposer/MessageComposerFragment;)I

    move-result v2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    sub-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
