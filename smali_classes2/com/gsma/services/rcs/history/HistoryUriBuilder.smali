.class public Lcom/gsma/services/rcs/history/HistoryUriBuilder;
.super Ljava/lang/Object;
.source "HistoryUriBuilder.java"


# instance fields
.field private final mUriBuilder:Landroid/net/Uri$Builder;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/gsma/services/rcs/history/HistoryUriBuilder;->mUriBuilder:Landroid/net/Uri$Builder;

    return-void
.end method


# virtual methods
.method public appendProvider(I)Lcom/gsma/services/rcs/history/HistoryUriBuilder;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/gsma/services/rcs/history/HistoryUriBuilder;->mUriBuilder:Landroid/net/Uri$Builder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "provider_id"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-object p0
.end method

.method public build()Landroid/net/Uri;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/gsma/services/rcs/history/HistoryUriBuilder;->mUriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
