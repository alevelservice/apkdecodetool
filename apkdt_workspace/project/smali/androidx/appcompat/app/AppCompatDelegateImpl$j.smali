.class Landroidx/appcompat/app/AppCompatDelegateImpl$j;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements La/a/n/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field private a:La/a/n/b$a;

.field final synthetic b:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;La/a/n/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->a:La/a/n/b$a;

    return-void
.end method


# virtual methods
.method public a(La/a/n/b;)V
    .locals 2

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->a:La/a/n/b$a;

    invoke-interface {v0, p1}, La/a/n/b$a;->a(La/a/n/b;)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->u:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->t:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->n()V

    .line 8
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->t:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;)Landroidx/core/view/a0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/a0;->a(F)Landroidx/core/view/a0;

    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->w:Landroidx/core/view/a0;

    .line 9
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->w:Landroidx/core/view/a0;

    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$j$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$j$a;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl$j;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/a0;->a(Landroidx/core/view/b0;)Landroidx/core/view/a0;

    .line 10
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Landroidx/appcompat/app/d;

    if-eqz v0, :cond_2

    .line 11
    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->s:La/a/n/b;

    invoke-interface {v0, p1}, Landroidx/appcompat/app/d;->onSupportActionModeFinished(La/a/n/b;)V

    .line 12
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->s:La/a/n/b;

    .line 13
    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->I(Landroid/view/View;)V

    return-void
.end method

.method public a(La/a/n/b;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->a:La/a/n/b$a;

    invoke-interface {v0, p1, p2}, La/a/n/b$a;->a(La/a/n/b;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public a(La/a/n/b;Landroid/view/MenuItem;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->a:La/a/n/b$a;

    invoke-interface {v0, p1, p2}, La/a/n/b$a;->a(La/a/n/b;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b(La/a/n/b;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->I(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->a:La/a/n/b$a;

    invoke-interface {v0, p1, p2}, La/a/n/b$a;->b(La/a/n/b;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
