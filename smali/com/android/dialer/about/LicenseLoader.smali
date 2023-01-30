.class final Lcom/android/dialer/about/LicenseLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "LicenseLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/AsyncTaskLoader<",
        "Ljava/util/List<",
        "Lcom/android/dialer/about/License;",
        ">;>;"
    }
.end annotation


# instance fields
.field private licenses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/dialer/about/License;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/dialer/about/LicenseLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/dialer/about/License;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/android/dialer/about/LicenseLoader;->licenses:Ljava/util/List;

    .line 41
    invoke-super {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/android/dialer/about/LicenseLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialer/about/License;",
            ">;"
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/android/dialer/about/LicenseLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/about/Licenses;->getLicenses(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/dialer/about/LicenseLoader;->licenses:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/dialer/about/LicenseLoader;->deliverResult(Ljava/util/List;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/about/LicenseLoader;->forceLoad()V

    :goto_0
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/android/dialer/about/LicenseLoader;->cancelLoad()Z

    return-void
.end method
