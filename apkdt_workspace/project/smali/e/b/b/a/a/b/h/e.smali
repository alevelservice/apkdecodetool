.class Le/b/b/a/a/b/h/e;
.super Ljava/lang/Object;
.source "SpmTrackIntegrator.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/Object;

.field final synthetic g:Le/b/b/a/a/b/h/d;


# direct methods
.method constructor <init>(Le/b/b/a/a/b/h/d;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/b/b/a/a/b/h/e;->g:Le/b/b/a/a/b/h/d;

    iput-object p2, p0, Le/b/b/a/a/b/h/e;->e:Ljava/lang/String;

    iput-object p3, p0, Le/b/b/a/a/b/h/e;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/b/b/a/a/b/h/e;->g:Le/b/b/a/a/b/h/d;

    invoke-static {p1}, Le/b/b/a/a/b/h/d;->a(Le/b/b/a/a/b/h/d;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Le/b/b/a/a/b/h/e;->e:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Le/b/b/a/a/b/h/e;->f:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
