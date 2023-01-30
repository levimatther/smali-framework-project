.class Lcom/android/dialer/about/LicenseActivity$1;
.super Ljava/lang/Object;
.source "LicenseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/about/LicenseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/about/LicenseActivity;

.field final synthetic val$firstVisibleChar:I

.field final synthetic val$scrollView:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lcom/android/dialer/about/LicenseActivity;ILandroid/widget/ScrollView;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/dialer/about/LicenseActivity$1;->this$0:Lcom/android/dialer/about/LicenseActivity;

    iput p2, p0, Lcom/android/dialer/about/LicenseActivity$1;->val$firstVisibleChar:I

    iput-object p3, p0, Lcom/android/dialer/about/LicenseActivity$1;->val$scrollView:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/android/dialer/about/LicenseActivity$1;->this$0:Lcom/android/dialer/about/LicenseActivity;

    const v1, 0x7f0901c6

    invoke-virtual {v0, v1}, Lcom/android/dialer/about/LicenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    iget v2, p0, Lcom/android/dialer/about/LicenseActivity$1;->val$firstVisibleChar:I

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 75
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/android/dialer/about/LicenseActivity$1;->val$scrollView:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void
.end method
