.class final Landroidx/fragment/app/k$c;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/k;->b(Landroidx/fragment/app/m;Landroid/view/ViewGroup;Landroid/view/View;La/e/a;Landroidx/fragment/app/k$e;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/fragment/app/Fragment;

.field final synthetic f:Landroidx/fragment/app/Fragment;

.field final synthetic g:Z

.field final synthetic h:La/e/a;

.field final synthetic i:Landroid/view/View;

.field final synthetic j:Landroidx/fragment/app/m;

.field final synthetic k:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLa/e/a;Landroid/view/View;Landroidx/fragment/app/m;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/k$c;->e:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/k$c;->f:Landroidx/fragment/app/Fragment;

    iput-boolean p3, p0, Landroidx/fragment/app/k$c;->g:Z

    iput-object p4, p0, Landroidx/fragment/app/k$c;->h:La/e/a;

    iput-object p5, p0, Landroidx/fragment/app/k$c;->i:Landroid/view/View;

    iput-object p6, p0, Landroidx/fragment/app/k$c;->j:Landroidx/fragment/app/m;

    iput-object p7, p0, Landroidx/fragment/app/k$c;->k:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/k$c;->e:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Landroidx/fragment/app/k$c;->f:Landroidx/fragment/app/Fragment;

    iget-boolean v2, p0, Landroidx/fragment/app/k$c;->g:Z

    iget-object v3, p0, Landroidx/fragment/app/k$c;->h:La/e/a;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/fragment/app/k;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLa/e/a;Z)V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/k$c;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/k$c;->j:Landroidx/fragment/app/m;

    iget-object v2, p0, Landroidx/fragment/app/k$c;->k:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/m;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
