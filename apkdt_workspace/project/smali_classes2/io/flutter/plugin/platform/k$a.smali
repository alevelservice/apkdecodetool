.class Lio/flutter/plugin/platform/k$a;
.super Ljava/lang/Object;
.source "PlatformViewsController.java"

# interfaces
.implements Lio/flutter/embedding/engine/i/i$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/platform/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugin/platform/k;


# direct methods
.method constructor <init>(Lio/flutter/plugin/platform/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d(I)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to use platform views with API "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", required API level is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lio/flutter/embedding/engine/i/i$b;)J
    .locals 11
    .param p1    # Lio/flutter/embedding/engine/i/i$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/16 v0, 0x14

    .line 8
    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/k$a;->d(I)V

    .line 9
    iget v0, p1, Lio/flutter/embedding/engine/i/i$b;->e:I

    invoke-static {v0}, Lio/flutter/plugin/platform/k;->b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    iget-object v0, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    iget-object v0, v0, Lio/flutter/plugin/platform/k;->i:Ljava/util/HashMap;

    iget v1, p1, Lio/flutter/embedding/engine/i/i$b;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    iget-object v0, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    invoke-static {v0}, Lio/flutter/plugin/platform/k;->a(Lio/flutter/plugin/platform/k;)Lio/flutter/plugin/platform/i;

    move-result-object v0

    iget-object v1, p1, Lio/flutter/embedding/engine/i/i$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/flutter/plugin/platform/i;->a(Ljava/lang/String;)Lio/flutter/plugin/platform/g;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v0, 0x0

    .line 12
    iget-object v1, p1, Lio/flutter/embedding/engine/i/i$b;->f:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {v4}, Lio/flutter/plugin/platform/g;->a()Lg/a/c/a/i;

    move-result-object v0

    iget-object v1, p1, Lio/flutter/embedding/engine/i/i$b;->f:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Lg/a/c/a/i;->a(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    move-object v9, v0

    .line 14
    iget-object v0, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    iget-wide v1, p1, Lio/flutter/embedding/engine/i/i$b;->c:D

    invoke-static {v0, v1, v2}, Lio/flutter/plugin/platform/k;->a(Lio/flutter/plugin/platform/k;D)I

    move-result v6

    .line 15
    iget-object v0, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    iget-wide v1, p1, Lio/flutter/embedding/engine/i/i$b;->d:D

    invoke-static {v0, v1, v2}, Lio/flutter/plugin/platform/k;->a(Lio/flutter/plugin/platform/k;D)I

    move-result v7

    .line 16
    iget-object v0, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    invoke-static {v0, v6, v7}, Lio/flutter/plugin/platform/k;->a(Lio/flutter/plugin/platform/k;II)V

    .line 17
    iget-object v0, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    invoke-static {v0}, Lio/flutter/plugin/platform/k;->h(Lio/flutter/plugin/platform/k;)Lio/flutter/view/g;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/view/g;->createSurfaceTexture()Lio/flutter/view/g$a;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    .line 19
    invoke-static {v1}, Lio/flutter/plugin/platform/k;->e(Lio/flutter/plugin/platform/k;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    .line 20
    invoke-static {v1}, Lio/flutter/plugin/platform/k;->i(Lio/flutter/plugin/platform/k;)Lio/flutter/plugin/platform/c;

    move-result-object v3

    iget v8, p1, Lio/flutter/embedding/engine/i/i$b;->a:I

    new-instance v10, Lio/flutter/plugin/platform/a;

    invoke-direct {v10, p0, p1}, Lio/flutter/plugin/platform/a;-><init>(Lio/flutter/plugin/platform/k$a;Lio/flutter/embedding/engine/i/i$b;)V

    move-object v5, v0

    .line 21
    invoke-static/range {v2 .. v10}, Lio/flutter/plugin/platform/l;->a(Landroid/content/Context;Lio/flutter/plugin/platform/c;Lio/flutter/plugin/platform/g;Lio/flutter/view/g$a;IIILjava/lang/Object;Landroid/view/View$OnFocusChangeListener;)Lio/flutter/plugin/platform/l;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 22
    iget-object v2, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    invoke-static {v2}, Lio/flutter/plugin/platform/k;->j(Lio/flutter/plugin/platform/k;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 23
    iget-object v2, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    invoke-static {v2}, Lio/flutter/plugin/platform/k;->j(Lio/flutter/plugin/platform/k;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/flutter/plugin/platform/l;->a(Landroid/view/View;)V

    .line 24
    :cond_1
    iget-object v2, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    iget-object v2, v2, Lio/flutter/plugin/platform/k;->i:Ljava/util/HashMap;

    iget v3, p1, Lio/flutter/embedding/engine/i/i$b;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {v1}, Lio/flutter/plugin/platform/l;->b()Landroid/view/View;

    move-result-object v1

    .line 26
    iget p1, p1, Lio/flutter/embedding/engine/i/i$b;->e:I

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 27
    iget-object p1, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    invoke-static {p1}, Lio/flutter/plugin/platform/k;->b(Lio/flutter/plugin/platform/k;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-interface {v0}, Lio/flutter/view/g$a;->id()J

    move-result-wide v0

    return-wide v0

    .line 29
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed creating virtual display for a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lio/flutter/embedding/engine/i/i$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lio/flutter/embedding/engine/i/i$b;->a:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to create a platform view of unregistered type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lio/flutter/embedding/engine/i/i$b;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to create an already created platform view, view id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lio/flutter/embedding/engine/i/i$b;->a:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to create a view with unknown direction value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lio/flutter/embedding/engine/i/i$b;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "(view id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lio/flutter/embedding/engine/i/i$b;->a:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    invoke-static {v0}, Lio/flutter/plugin/platform/k;->f(Lio/flutter/plugin/platform/k;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/f;

    .line 2
    iget-object v1, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    invoke-static {v1}, Lio/flutter/plugin/platform/k;->g(Lio/flutter/plugin/platform/k;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Lio/flutter/plugin/platform/f;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 4
    :cond_0
    iget-object v2, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    invoke-static {v2}, Lio/flutter/plugin/platform/k;->f(Lio/flutter/plugin/platform/k;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 5
    invoke-interface {v0}, Lio/flutter/plugin/platform/f;->dispose()V

    :cond_1
    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    invoke-static {v0}, Lio/flutter/plugin/platform/k;->g(Lio/flutter/plugin/platform/k;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    return-void
.end method

.method public a(II)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 53
    invoke-static {p2}, Lio/flutter/plugin/platform/k;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x14

    .line 54
    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/k$a;->d(I)V

    .line 55
    iget-object v0, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    iget-object v0, v0, Lio/flutter/plugin/platform/k;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugin/platform/l;

    invoke-virtual {p1}, Lio/flutter/plugin/platform/l;->b()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutDirection(I)V

    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending touch to an unknown view with id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to set unknown direction value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "(view id: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic a(Lio/flutter/embedding/engine/i/i$b;Landroid/view/View;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 33
    iget-object p2, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    invoke-static {p2}, Lio/flutter/plugin/platform/k;->d(Lio/flutter/plugin/platform/k;)Lio/flutter/embedding/engine/i/i;

    move-result-object p2

    iget p1, p1, Lio/flutter/embedding/engine/i/i$b;->a:I

    invoke-virtual {p2, p1}, Lio/flutter/embedding/engine/i/i;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Lio/flutter/embedding/engine/i/i$c;Ljava/lang/Runnable;)V
    .locals 5
    .param p1    # Lio/flutter/embedding/engine/i/i$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x14

    .line 34
    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/k$a;->d(I)V

    .line 35
    iget-object v0, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    iget-object v0, v0, Lio/flutter/plugin/platform/k;->i:Ljava/util/HashMap;

    iget v1, p1, Lio/flutter/embedding/engine/i/i$c;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/l;

    if-eqz v0, :cond_0

    .line 36
    iget-object v1, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    iget-wide v2, p1, Lio/flutter/embedding/engine/i/i$c;->b:D

    invoke-static {v1, v2, v3}, Lio/flutter/plugin/platform/k;->a(Lio/flutter/plugin/platform/k;D)I

    move-result v1

    .line 37
    iget-object v2, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    iget-wide v3, p1, Lio/flutter/embedding/engine/i/i$c;->c:D

    invoke-static {v2, v3, v4}, Lio/flutter/plugin/platform/k;->a(Lio/flutter/plugin/platform/k;D)I

    move-result p1

    .line 38
    iget-object v2, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    invoke-static {v2, v1, p1}, Lio/flutter/plugin/platform/k;->a(Lio/flutter/plugin/platform/k;II)V

    .line 39
    iget-object v2, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    invoke-static {v2, v0}, Lio/flutter/plugin/platform/k;->a(Lio/flutter/plugin/platform/k;Lio/flutter/plugin/platform/l;)V

    .line 40
    new-instance v2, Lio/flutter/plugin/platform/k$a$a;

    invoke-direct {v2, p0, v0, p2}, Lio/flutter/plugin/platform/k$a$a;-><init>(Lio/flutter/plugin/platform/k$a;Lio/flutter/plugin/platform/l;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, p1, v2}, Lio/flutter/plugin/platform/l;->a(IILjava/lang/Runnable;)V

    return-void

    .line 41
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to resize a platform view with unknown id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lio/flutter/embedding/engine/i/i$c;->a:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(Lio/flutter/embedding/engine/i/i$d;)V
    .locals 4
    .param p1    # Lio/flutter/embedding/engine/i/i$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    iget v0, p1, Lio/flutter/embedding/engine/i/i$d;->a:I

    .line 43
    iget-object v1, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    invoke-static {v1}, Lio/flutter/plugin/platform/k;->e(Lio/flutter/plugin/platform/k;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/16 v2, 0x14

    .line 44
    invoke-direct {p0, v2}, Lio/flutter/plugin/platform/k$a;->d(I)V

    .line 45
    iget-object v2, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    iget-object v2, v2, Lio/flutter/plugin/platform/k;->i:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    iget-object v0, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lio/flutter/plugin/platform/k;->a(FLio/flutter/embedding/engine/i/i$d;Z)Landroid/view/MotionEvent;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    iget-object v1, v1, Lio/flutter/plugin/platform/k;->i:Ljava/util/HashMap;

    iget p1, p1, Lio/flutter/embedding/engine/i/i$d;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugin/platform/l;

    invoke-virtual {p1, v0}, Lio/flutter/plugin/platform/l;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object v2, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    invoke-static {v2}, Lio/flutter/plugin/platform/k;->f(Lio/flutter/plugin/platform/k;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 49
    iget-object v0, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lio/flutter/plugin/platform/k;->a(FLio/flutter/embedding/engine/i/i$d;Z)Landroid/view/MotionEvent;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    invoke-static {v1}, Lio/flutter/plugin/platform/k;->f(Lio/flutter/plugin/platform/k;)Landroid/util/SparseArray;

    move-result-object v1

    iget p1, p1, Lio/flutter/embedding/engine/i/i$d;->a:I

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugin/platform/f;

    invoke-interface {p1}, Lio/flutter/plugin/platform/f;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    :goto_0
    return-void

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending touch to an unknown view with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(I)V
    .locals 3

    const/16 v0, 0x14

    .line 10
    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/k$a;->d(I)V

    .line 11
    iget-object v0, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    iget-object v0, v0, Lio/flutter/plugin/platform/k;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/l;

    if-eqz v0, :cond_1

    .line 12
    iget-object v1, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    invoke-static {v1}, Lio/flutter/plugin/platform/k;->c(Lio/flutter/plugin/platform/k;)Lio/flutter/plugin/editing/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 13
    iget-object v1, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    invoke-static {v1}, Lio/flutter/plugin/platform/k;->c(Lio/flutter/plugin/platform/k;)Lio/flutter/plugin/editing/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/flutter/plugin/editing/c;->a(I)V

    .line 14
    :cond_0
    iget-object v1, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    invoke-static {v1}, Lio/flutter/plugin/platform/k;->b(Lio/flutter/plugin/platform/k;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lio/flutter/plugin/platform/l;->b()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {v0}, Lio/flutter/plugin/platform/l;->a()V

    .line 16
    iget-object v0, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    iget-object v0, v0, Lio/flutter/plugin/platform/k;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 17
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to dispose a platform view with unknown id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lio/flutter/embedding/engine/i/i$b;)V
    .locals 4
    .param p1    # Lio/flutter/embedding/engine/i/i$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x13

    .line 1
    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/k$a;->d(I)V

    .line 2
    iget v0, p1, Lio/flutter/embedding/engine/i/i$b;->e:I

    invoke-static {v0}, Lio/flutter/plugin/platform/k;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    invoke-static {v0}, Lio/flutter/plugin/platform/k;->a(Lio/flutter/plugin/platform/k;)Lio/flutter/plugin/platform/i;

    move-result-object v0

    iget-object v1, p1, Lio/flutter/embedding/engine/i/i$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/flutter/plugin/platform/i;->a(Ljava/lang/String;)Lio/flutter/plugin/platform/g;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 4
    iget-object v2, p1, Lio/flutter/embedding/engine/i/i$b;->f:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0}, Lio/flutter/plugin/platform/g;->a()Lg/a/c/a/i;

    move-result-object v1

    iget-object v2, p1, Lio/flutter/embedding/engine/i/i$b;->f:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v2}, Lg/a/c/a/i;->a(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    :cond_0
    iget-object v2, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    invoke-static {v2}, Lio/flutter/plugin/platform/k;->e(Lio/flutter/plugin/platform/k;)Landroid/content/Context;

    move-result-object v2

    iget v3, p1, Lio/flutter/embedding/engine/i/i$b;->a:I

    invoke-virtual {v0, v2, v3, v1}, Lio/flutter/plugin/platform/g;->a(Landroid/content/Context;ILjava/lang/Object;)Lio/flutter/plugin/platform/f;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    invoke-static {v1}, Lio/flutter/plugin/platform/k;->f(Lio/flutter/plugin/platform/k;)Landroid/util/SparseArray;

    move-result-object v1

    iget p1, p1, Lio/flutter/embedding/engine/i/i$b;->a:I

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to create a platform view of unregistered type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lio/flutter/embedding/engine/i/i$b;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to create a view with unknown direction value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lio/flutter/embedding/engine/i/i$b;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "(view id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lio/flutter/embedding/engine/i/i$b;->a:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(I)V
    .locals 1

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/k$a;->d(I)V

    .line 2
    iget-object v0, p0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    iget-object v0, v0, Lio/flutter/plugin/platform/k;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugin/platform/l;

    invoke-virtual {p1}, Lio/flutter/plugin/platform/l;->b()Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    return-void
.end method
