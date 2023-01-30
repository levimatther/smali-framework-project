.class Lcom/android/contacts/common/dialog/CallSubjectDialog$7$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CallSubjectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/common/dialog/CallSubjectDialog$7;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/dialog/CallSubjectDialog$7;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7$2;->this$1:Lcom/android/contacts/common/dialog/CallSubjectDialog$7;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 502
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 503
    iget-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7$2;->this$1:Lcom/android/contacts/common/dialog/CallSubjectDialog$7;

    iget-object p1, p1, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {p1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$200(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/ListView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 508
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
