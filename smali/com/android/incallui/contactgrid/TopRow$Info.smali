.class public Lcom/android/incallui/contactgrid/TopRow$Info;
.super Ljava/lang/Object;
.source "TopRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/contactgrid/TopRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final label:Ljava/lang/CharSequence;

.field public final labelIsSingleLine:Z


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/incallui/contactgrid/TopRow$Info;->label:Ljava/lang/CharSequence;

    .line 58
    iput-object p2, p0, Lcom/android/incallui/contactgrid/TopRow$Info;->icon:Landroid/graphics/drawable/Drawable;

    .line 59
    iput-boolean p3, p0, Lcom/android/incallui/contactgrid/TopRow$Info;->labelIsSingleLine:Z

    return-void
.end method
