.class public Landroidx/fragment/app/d;
.super Ljava/lang/Object;
.source "FragmentController.java"


# instance fields
.field private final a:Landroidx/fragment/app/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/f<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/fragment/app/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/f<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    return-void
.end method

.method public static a(Landroidx/fragment/app/f;)Landroidx/fragment/app/d;
    .locals 2
    .param p0    # Landroidx/fragment/app/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/f<",
            "*>;)",
            "Landroidx/fragment/app/d;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/fragment/app/d;

    const-string v1, "callbacks == null"

    invoke-static {p0, v1}, La/i/m/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/f;

    invoke-direct {v0, p0}, Landroidx/fragment/app/d;-><init>(Landroidx/fragment/app/f;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->i:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/h;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->i:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 8
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->i:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->i()V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->i:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 2
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    instance-of v1, v0, Landroidx/lifecycle/s;

    if-eqz v1, :cond_0

    .line 6
    iget-object v0, v0, Landroidx/fragment/app/f;->i:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->a(Landroid/os/Parcelable;)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you\'re still using retainNestedNonConfig()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/view/Menu;)V
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 13
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->i:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->a(Landroid/view/Menu;)V

    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v1, v0, Landroidx/fragment/app/f;->i:Landroidx/fragment/app/h;

    invoke-virtual {v1, v0, v0, p1}, Landroidx/fragment/app/h;->a(Landroidx/fragment/app/f;Landroidx/fragment/app/c;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 9
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->i:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->a(Z)V

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 11
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->i:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/h;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 12
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->i:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->a(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->i:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->j()V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->i:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->b(Z)V

    return-void
.end method

.method public b(Landroid/view/Menu;)Z
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->i:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->b(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->i:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->b(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->i:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->k()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->i:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->m()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->i:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->n()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->i:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->p()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->i:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->q()V

    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->i:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->r()V

    return-void
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->i:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->t()Z

    move-result v0

    return v0
.end method

.method public j()Landroidx/fragment/app/g;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->i:Landroidx/fragment/app/h;

    return-object v0
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->i:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->z()V

    return-void
.end method

.method public l()Landroid/os/Parcelable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->i:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->B()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
