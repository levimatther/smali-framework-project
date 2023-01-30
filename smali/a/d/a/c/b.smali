.class public La/d/a/c/b;
.super Ljava/lang/Object;
.source "CustomProgressDialogUtils.java"


# instance fields
.field public a:La/d/a/c/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 16
    iget-object v0, p0, La/d/a/c/b;->a:La/d/a/c/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, La/d/a/c/b;->a:La/d/a/c/a;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 18
    iget-object v0, p0, La/d/a/c/b;->a:La/d/a/c/a;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, La/d/a/c/b;->a:La/d/a/c/a;

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 9
    iget-object v0, p0, La/d/a/c/b;->a:La/d/a/c/a;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, La/d/a/c/a$b;

    invoke-direct {v0, p1}, La/d/a/c/a$b;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/android/netlibrary/R$style;->LoadingDialogStyle:I

    .line 11
    invoke-virtual {v0, p1}, La/d/a/c/a$b;->a(I)La/d/a/c/a$b;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, La/d/a/c/a$b;->a()La/d/a/c/a;

    move-result-object p1

    iput-object p1, p0, La/d/a/c/b;->a:La/d/a/c/a;

    .line 14
    :cond_0
    iget-object p1, p0, La/d/a/c/b;->a:La/d/a/c/a;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 15
    iget-object p1, p0, La/d/a/c/b;->a:La/d/a/c/a;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, La/d/a/c/b;->a:La/d/a/c/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, La/d/a/c/a$b;

    invoke-direct {v0, p1}, La/d/a/c/a$b;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/android/netlibrary/R$style;->LoadingDialogStyle:I

    .line 3
    invoke-virtual {v0, p1}, La/d/a/c/a$b;->a(I)La/d/a/c/a$b;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2}, La/d/a/c/a$b;->a(Ljava/lang/String;)La/d/a/c/a$b;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, La/d/a/c/a$b;->a()La/d/a/c/a;

    move-result-object p1

    iput-object p1, p0, La/d/a/c/b;->a:La/d/a/c/a;

    .line 7
    :cond_0
    iget-object p1, p0, La/d/a/c/b;->a:La/d/a/c/a;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    iget-object p1, p0, La/d/a/c/b;->a:La/d/a/c/a;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method
