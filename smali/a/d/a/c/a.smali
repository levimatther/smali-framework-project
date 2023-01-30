.class public La/d/a/c/a;
.super Landroid/app/Dialog;
.source "CustomLoadingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/d/a/c/a$b;
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Z

.field public c:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(La/d/a/c/a$b;)V
    .locals 1

    .line 2
    iget-object v0, p1, La/d/a/c/a$b;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-static {p1}, La/d/a/c/a$b;->a(La/d/a/c/a$b;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, La/d/a/c/a;->a:Landroid/view/View;

    .line 4
    invoke-static {p1}, La/d/a/c/a$b;->b(La/d/a/c/a$b;)Z

    move-result p1

    iput-boolean p1, p0, La/d/a/c/a;->b:Z

    return-void
.end method

.method public constructor <init>(La/d/a/c/a$b;I)V
    .locals 1

    .line 5
    iget-object v0, p1, La/d/a/c/a$b;->a:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 6
    invoke-static {p1}, La/d/a/c/a$b;->a(La/d/a/c/a$b;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, La/d/a/c/a;->a:Landroid/view/View;

    .line 7
    invoke-static {p1}, La/d/a/c/a$b;->b(La/d/a/c/a$b;)Z

    move-result p1

    iput-boolean p1, p0, La/d/a/c/a;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(La/d/a/c/a$b;ILa/d/a/c/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, La/d/a/c/a;-><init>(La/d/a/c/a$b;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, La/d/a/c/a;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 3
    iget-boolean p1, p0, La/d/a/c/a;->b:Z

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 2
    iget-object v0, p0, La/d/a/c/a;->c:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, La/d/a/c/a;->a:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    sget v0, Lcom/android/netlibrary/R$id;->iv_loading_img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, La/d/a/c/a;->c:Landroid/graphics/drawable/AnimationDrawable;

    .line 7
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
