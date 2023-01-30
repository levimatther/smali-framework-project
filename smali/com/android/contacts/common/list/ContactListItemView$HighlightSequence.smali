.class public Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;
.super Ljava/lang/Object;
.source "ContactListItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ContactListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HighlightSequence"
.end annotation


# instance fields
.field private final end:I

.field private final start:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1575
    iput p1, p0, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->start:I

    .line 1576
    iput p2, p0, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->end:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;)I
    .locals 0

    .line 1569
    iget p0, p0, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->start:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;)I
    .locals 0

    .line 1569
    iget p0, p0, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->end:I

    return p0
.end method
