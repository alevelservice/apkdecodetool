.class public Lio/flutter/embedding/engine/i/b;
.super Ljava/lang/Object;
.source "AccessibilityChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/i/b$b;
    }
.end annotation


# instance fields
.field public final a:Lg/a/c/a/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/c/a/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lio/flutter/embedding/engine/FlutterJNI;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private c:Lio/flutter/embedding/engine/i/b$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d:Lg/a/c/a/b$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/c/a/b$d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/e/a;Lio/flutter/embedding/engine/FlutterJNI;)V
    .locals 3
    .param p1    # Lio/flutter/embedding/engine/e/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/embedding/engine/FlutterJNI;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/flutter/embedding/engine/i/b$a;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/i/b$a;-><init>(Lio/flutter/embedding/engine/i/b;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/i/b;->d:Lg/a/c/a/b$d;

    .line 3
    new-instance v0, Lg/a/c/a/b;

    sget-object v1, Lg/a/c/a/n;->a:Lg/a/c/a/n;

    const-string v2, "flutter/accessibility"

    invoke-direct {v0, p1, v2, v1}, Lg/a/c/a/b;-><init>(Lg/a/c/a/c;Ljava/lang/String;Lg/a/c/a/i;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/i/b;->a:Lg/a/c/a/b;

    .line 4
    iget-object p1, p0, Lio/flutter/embedding/engine/i/b;->a:Lg/a/c/a/b;

    iget-object v0, p0, Lio/flutter/embedding/engine/i/b;->d:Lg/a/c/a/b$d;

    invoke-virtual {p1, v0}, Lg/a/c/a/b;->a(Lg/a/c/a/b$d;)V

    .line 5
    iput-object p2, p0, Lio/flutter/embedding/engine/i/b;->b:Lio/flutter/embedding/engine/FlutterJNI;

    return-void
.end method

.method static synthetic a(Lio/flutter/embedding/engine/i/b;)Lio/flutter/embedding/engine/i/b$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/embedding/engine/i/b;->c:Lio/flutter/embedding/engine/i/b$b;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/engine/i/b;->b:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->setSemanticsEnabled(Z)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lio/flutter/embedding/engine/i/b;->b:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->setAccessibilityFeatures(I)V

    return-void
.end method

.method public a(ILio/flutter/view/c$f;)V
    .locals 1
    .param p2    # Lio/flutter/view/c$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    iget-object v0, p0, Lio/flutter/embedding/engine/i/b;->b:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchSemanticsAction(ILio/flutter/view/c$f;)V

    return-void
.end method

.method public a(ILio/flutter/view/c$f;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Lio/flutter/view/c$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    iget-object v0, p0, Lio/flutter/embedding/engine/i/b;->b:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchSemanticsAction(ILio/flutter/view/c$f;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lio/flutter/embedding/engine/i/b$b;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/i/b$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    iput-object p1, p0, Lio/flutter/embedding/engine/i/b;->c:Lio/flutter/embedding/engine/i/b$b;

    .line 7
    iget-object v0, p0, Lio/flutter/embedding/engine/i/b;->b:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->setAccessibilityDelegate(Lio/flutter/embedding/engine/FlutterJNI$a;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/i/b;->b:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->setSemanticsEnabled(Z)V

    return-void
.end method
