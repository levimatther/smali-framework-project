.class public final synthetic Lcom/android/incallui/-$$Lambda$BdiRyPMtlxPTIT5wFhngVDwrrQo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/android/incallui/InCallActivityCommon;


# direct methods
.method public synthetic constructor <init>(Lcom/android/incallui/InCallActivityCommon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/-$$Lambda$BdiRyPMtlxPTIT5wFhngVDwrrQo;->f$0:Lcom/android/incallui/InCallActivityCommon;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/-$$Lambda$BdiRyPMtlxPTIT5wFhngVDwrrQo;->f$0:Lcom/android/incallui/InCallActivityCommon;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivityCommon;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
