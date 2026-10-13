.class public Lio/flutter/embedding/android/FlutterFragment$c;
.super Ljava/lang/Object;
.source "FlutterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/FlutterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/android/FlutterFragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lio/flutter/embedding/engine/d;

.field private f:Lio/flutter/embedding/android/g;

.field private g:Lio/flutter/embedding/android/k;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "main"

    .line 2
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$c;->b:Ljava/lang/String;

    const-string v0, "/"

    .line 3
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$c;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$c;->d:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$c;->e:Lio/flutter/embedding/engine/d;

    .line 6
    sget-object v0, Lio/flutter/embedding/android/g;->surface:Lio/flutter/embedding/android/g;

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$c;->f:Lio/flutter/embedding/android/g;

    .line 7
    sget-object v0, Lio/flutter/embedding/android/k;->transparent:Lio/flutter/embedding/android/k;

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$c;->g:Lio/flutter/embedding/android/k;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterFragment$c;->h:Z

    .line 9
    const-class v0, Lio/flutter/embedding/android/FlutterFragment;

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$c;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Lio/flutter/embedding/android/g;)Lio/flutter/embedding/android/FlutterFragment$c;
    .locals 0
    .param p1    # Lio/flutter/embedding/android/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$c;->f:Lio/flutter/embedding/android/g;

    return-object p0
.end method

.method public a(Lio/flutter/embedding/android/k;)Lio/flutter/embedding/android/FlutterFragment$c;
    .locals 0
    .param p1    # Lio/flutter/embedding/android/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$c;->g:Lio/flutter/embedding/android/k;

    return-object p0
.end method

.method public a(Lio/flutter/embedding/engine/d;)Lio/flutter/embedding/android/FlutterFragment$c;
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$c;->e:Lio/flutter/embedding/engine/d;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lio/flutter/embedding/android/FlutterFragment$c;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$c;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lio/flutter/embedding/android/FlutterFragment$c;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 5
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterFragment$c;->h:Z

    return-object p0
.end method

.method public a()Lio/flutter/embedding/android/FlutterFragment;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/flutter/embedding/android/FlutterFragment;",
            ">()TT;"
        }
    .end annotation

    .line 6
    :try_start_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$c;->a:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/embedding/android/FlutterFragment;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment$c;->b()Landroid/os/Bundle;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The FlutterFragment subclass sent in the constructor ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterFragment$c;->a:Ljava/lang/Class;

    .line 10
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") does not match the expected return type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not instantiate FlutterFragment subclass ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/flutter/embedding/android/FlutterFragment$c;->a:Ljava/lang/Class;

    .line 12
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected b()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$c;->c:Ljava/lang/String;

    const-string v2, "initial_route"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$c;->d:Ljava/lang/String;

    const-string v2, "app_bundle_path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$c;->b:Ljava/lang/String;

    const-string v2, "dart_entrypoint"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$c;->e:Lio/flutter/embedding/engine/d;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Lio/flutter/embedding/engine/d;->a()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "initialization_args"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8
    :cond_0
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$c;->f:Lio/flutter/embedding/android/g;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    sget-object v1, Lio/flutter/embedding/android/g;->surface:Lio/flutter/embedding/android/g;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flutterview_render_mode"

    .line 10
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$c;->g:Lio/flutter/embedding/android/k;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    sget-object v1, Lio/flutter/embedding/android/k;->transparent:Lio/flutter/embedding/android/k;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flutterview_transparency_mode"

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-boolean v1, p0, Lio/flutter/embedding/android/FlutterFragment$c;->h:Z

    const-string v2, "should_attach_engine_to_activity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x1

    const-string v2, "destroy_engine_with_fragment"

    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lio/flutter/embedding/android/FlutterFragment$c;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lio/flutter/embedding/android/FlutterFragment$c;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$c;->c:Ljava/lang/String;

    return-object p0
.end method
