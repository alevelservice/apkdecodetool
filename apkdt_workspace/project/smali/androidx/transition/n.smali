.class Landroidx/transition/n;
.super Ljava/lang/Object;
.source "TransitionValuesMaps.java"


# instance fields
.field final a:La/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/e/a<",
            "Landroid/view/View;",
            "Landroidx/transition/m;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final c:La/e/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/e/d<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final d:La/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/e/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, La/e/a;

    invoke-direct {v0}, La/e/a;-><init>()V

    iput-object v0, p0, Landroidx/transition/n;->a:La/e/a;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/transition/n;->b:Landroid/util/SparseArray;

    .line 4
    new-instance v0, La/e/d;

    invoke-direct {v0}, La/e/d;-><init>()V

    iput-object v0, p0, Landroidx/transition/n;->c:La/e/d;

    .line 5
    new-instance v0, La/e/a;

    invoke-direct {v0}, La/e/a;-><init>()V

    iput-object v0, p0, Landroidx/transition/n;->d:La/e/a;

    return-void
.end method
