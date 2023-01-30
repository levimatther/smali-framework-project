.class Lcom/android/dialer/app/list/OldSpeedDialFragment$1;
.super Ljava/lang/Object;
.source "OldSpeedDialFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/list/OldSpeedDialFragment;->animateGridView([J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/list/OldSpeedDialFragment;

.field final synthetic val$idsInPlace:[J


# direct methods
.method constructor <init>(Lcom/android/dialer/app/list/OldSpeedDialFragment;[J)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment$1;->this$0:Lcom/android/dialer/app/list/OldSpeedDialFragment;

    iput-object p2, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment$1;->val$idsInPlace:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 313
    iget-object v0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment$1;->this$0:Lcom/android/dialer/app/list/OldSpeedDialFragment;

    invoke-static {v0}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->access$200(Lcom/android/dialer/app/list/OldSpeedDialFragment;)Lcom/android/dialer/app/list/PhoneFavoriteListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->getFirstVisiblePosition()I

    move-result v0

    .line 314
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 315
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 316
    :goto_0
    iget-object v5, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment$1;->this$0:Lcom/android/dialer/app/list/OldSpeedDialFragment;

    invoke-static {v5}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->access$200(Lcom/android/dialer/app/list/OldSpeedDialFragment;)Lcom/android/dialer/app/list/PhoneFavoriteListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 317
    iget-object v5, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment$1;->this$0:Lcom/android/dialer/app/list/OldSpeedDialFragment;

    invoke-static {v5}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->access$200(Lcom/android/dialer/app/list/OldSpeedDialFragment;)Lcom/android/dialer/app/list/PhoneFavoriteListView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    add-int v6, v0, v4

    .line 323
    iget-object v7, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment$1;->this$0:Lcom/android/dialer/app/list/OldSpeedDialFragment;

    invoke-static {v7}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->access$300(Lcom/android/dialer/app/list/OldSpeedDialFragment;)Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_1

    .line 327
    :cond_0
    iget-object v7, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment$1;->this$0:Lcom/android/dialer/app/list/OldSpeedDialFragment;

    invoke-static {v7}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->access$300(Lcom/android/dialer/app/list/OldSpeedDialFragment;)Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->getItemId(I)J

    move-result-wide v6

    .line 329
    iget-object v8, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment$1;->this$0:Lcom/android/dialer/app/list/OldSpeedDialFragment;

    iget-object v9, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment$1;->val$idsInPlace:[J

    invoke-static {v8, v9, v6, v7}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->access$400(Lcom/android/dialer/app/list/OldSpeedDialFragment;[JJ)Z

    move-result v8

    const/4 v9, 0x2

    if-eqz v8, :cond_1

    new-array v0, v9, [F

    .line 330
    fill-array-data v0, :array_0

    const-string v3, "alpha"

    invoke-static {v5, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 333
    :cond_1
    iget-object v8, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment$1;->this$0:Lcom/android/dialer/app/list/OldSpeedDialFragment;

    invoke-static {v8}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->access$500(Lcom/android/dialer/app/list/OldSpeedDialFragment;)Landroidx/collection/LongSparseArray;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 334
    iget-object v10, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment$1;->this$0:Lcom/android/dialer/app/list/OldSpeedDialFragment;

    invoke-static {v10}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->access$600(Lcom/android/dialer/app/list/OldSpeedDialFragment;)Landroidx/collection/LongSparseArray;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 335
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    .line 336
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v6, :cond_2

    .line 341
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eq v13, v10, :cond_2

    .line 342
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v6, v10

    new-array v10, v9, [F

    int-to-float v6, v6

    aput v6, v10, v3

    aput v11, v10, v12

    const-string/jumbo v6, "translationX"

    .line 343
    invoke-static {v5, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v8, :cond_3

    .line 348
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v7, :cond_3

    .line 349
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v6, v7

    new-array v7, v9, [F

    int-to-float v6, v6

    aput v6, v7, v3

    aput v11, v7, v12

    const-string/jumbo v6, "translationY"

    .line 350
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 369
    :cond_4
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 370
    iget-object v0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment$1;->this$0:Lcom/android/dialer/app/list/OldSpeedDialFragment;

    invoke-static {v0}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->access$700(Lcom/android/dialer/app/list/OldSpeedDialFragment;)I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 371
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 374
    :cond_5
    iget-object v0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment$1;->this$0:Lcom/android/dialer/app/list/OldSpeedDialFragment;

    invoke-static {v0}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->access$500(Lcom/android/dialer/app/list/OldSpeedDialFragment;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 375
    iget-object v0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment$1;->this$0:Lcom/android/dialer/app/list/OldSpeedDialFragment;

    invoke-static {v0}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->access$600(Lcom/android/dialer/app/list/OldSpeedDialFragment;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
