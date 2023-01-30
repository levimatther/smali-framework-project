.class public final La/d/a/c/a$b;
.super Ljava/lang/Object;
.source "CustomLoadingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/d/a/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:I

.field public c:Landroid/view/View;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, La/d/a/c/a$b;->b:I

    .line 7
    iput-object p1, p0, La/d/a/c/a$b;->a:Landroid/content/Context;

    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/netlibrary/R$layout;->dialog_loading:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, La/d/a/c/a$b;->c:Landroid/view/View;

    return-void
.end method

.method public static synthetic a(La/d/a/c/a$b;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, La/d/a/c/a$b;->c:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic b(La/d/a/c/a$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, La/d/a/c/a$b;->d:Z

    return p0
.end method


# virtual methods
.method public a(I)La/d/a/c/a$b;
    .locals 0

    .line 2
    iput p1, p0, La/d/a/c/a$b;->b:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)La/d/a/c/a$b;
    .locals 2

    .line 3
    iget-object v0, p0, La/d/a/c/a$b;->c:Landroid/view/View;

    sget v1, Lcom/android/netlibrary/R$id;->tv_loading_msg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public a(Z)La/d/a/c/a$b;
    .locals 0

    .line 6
    iput-boolean p1, p0, La/d/a/c/a$b;->d:Z

    return-object p0
.end method

.method public a()La/d/a/c/a;
    .locals 3

    .line 7
    iget v0, p0, La/d/a/c/a$b;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 8
    new-instance v0, La/d/a/c/a;

    iget v1, p0, La/d/a/c/a$b;->b:I

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, La/d/a/c/a;-><init>(La/d/a/c/a$b;ILa/d/a/c/a$a;)V

    return-object v0

    .line 10
    :cond_0
    new-instance v0, La/d/a/c/a;

    invoke-direct {v0, p0}, La/d/a/c/a;-><init>(La/d/a/c/a$b;)V

    return-object v0
.end method
