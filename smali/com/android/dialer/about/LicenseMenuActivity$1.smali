.class Lcom/android/dialer/about/LicenseMenuActivity$1;
.super Ljava/lang/Object;
.source "LicenseMenuActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/about/LicenseMenuActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/about/LicenseMenuActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/about/LicenseMenuActivity;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/dialer/about/LicenseMenuActivity$1;->this$0:Lcom/android/dialer/about/LicenseMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 63
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/about/License;

    .line 64
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/android/dialer/about/LicenseMenuActivity$1;->this$0:Lcom/android/dialer/about/LicenseMenuActivity;

    const-class p4, Lcom/android/dialer/about/LicenseActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "license"

    .line 65
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 66
    iget-object p1, p0, Lcom/android/dialer/about/LicenseMenuActivity$1;->this$0:Lcom/android/dialer/about/LicenseMenuActivity;

    invoke-virtual {p1, p2}, Lcom/android/dialer/about/LicenseMenuActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
