.class public final synthetic Lcom/android/dialershared/bubble/-$$Lambda$Bubble$ViewHolder$LJJLiLL3elzEvdIrcW7jsAPg-OQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/dialershared/bubble/WindowRoot$OnConfigurationChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/dialershared/bubble/Bubble$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialershared/bubble/Bubble$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$ViewHolder$LJJLiLL3elzEvdIrcW7jsAPg-OQ;->f$0:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$ViewHolder$LJJLiLL3elzEvdIrcW7jsAPg-OQ;->f$0:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v0, p1}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->lambda$new$1$Bubble$ViewHolder(Landroid/content/res/Configuration;)V

    return-void
.end method
