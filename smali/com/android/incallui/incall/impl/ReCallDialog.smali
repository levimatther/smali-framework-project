.class public Lcom/android/incallui/incall/impl/ReCallDialog;
.super Landroid/app/Dialog;
.source "ReCallDialog.java"


# instance fields
.field public context:Landroid/content/Context;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p1, p0, Lcom/android/incallui/incall/impl/ReCallDialog;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 24
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 25
    iget-object p1, p0, Lcom/android/incallui/incall/impl/ReCallDialog;->context:Landroid/content/Context;

    const v0, 0x7f0c00f1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09025f

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/incall/impl/ReCallDialog;->textView:Landroid/widget/TextView;

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/incallui/incall/impl/ReCallDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/android/incallui/incall/impl/ReCallDialog;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
