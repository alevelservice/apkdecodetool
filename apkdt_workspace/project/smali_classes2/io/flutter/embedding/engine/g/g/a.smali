.class public Lio/flutter/embedding/engine/g/g/a;
.super Ljava/lang/Object;
.source "ShimPluginRegistry.java"

# interfaces
.implements Lg/a/c/a/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/g/g/a$b;
    }
.end annotation


# instance fields
.field private final e:Lio/flutter/embedding/engine/a;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lio/flutter/embedding/engine/g/g/a$b;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/a;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/g/g/a;->f:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lio/flutter/embedding/engine/g/g/a;->e:Lio/flutter/embedding/engine/a;

    .line 4
    new-instance p1, Lio/flutter/embedding/engine/g/g/a$b;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lio/flutter/embedding/engine/g/g/a$b;-><init>(Lio/flutter/embedding/engine/g/g/a$a;)V

    iput-object p1, p0, Lio/flutter/embedding/engine/g/g/a;->g:Lio/flutter/embedding/engine/g/g/a$b;

    .line 5
    iget-object p1, p0, Lio/flutter/embedding/engine/g/g/a;->e:Lio/flutter/embedding/engine/a;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/g/b;

    move-result-object p1

    iget-object v0, p0, Lio/flutter/embedding/engine/g/g/a;->g:Lio/flutter/embedding/engine/g/g/a$b;

    invoke-interface {p1, v0}, Lio/flutter/embedding/engine/g/b;->a(Lio/flutter/embedding/engine/g/a;)V

    return-void
.end method


# virtual methods
.method public hasPlugin(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/g/g/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public registrarFor(Ljava/lang/String;)Lg/a/c/a/m$d;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating plugin Registrar for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShimPluginRegistry"

    invoke-static {v1, v0}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/engine/g/g/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/flutter/embedding/engine/g/g/a;->f:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/flutter/embedding/engine/g/g/b;

    iget-object v1, p0, Lio/flutter/embedding/engine/g/g/a;->f:Ljava/util/Map;

    invoke-direct {v0, p1, v1}, Lio/flutter/embedding/engine/g/g/b;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 5
    iget-object p1, p0, Lio/flutter/embedding/engine/g/g/a;->g:Lio/flutter/embedding/engine/g/g/a$b;

    invoke-virtual {p1, v0}, Lio/flutter/embedding/engine/g/g/a$b;->a(Lio/flutter/embedding/engine/g/g/b;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Plugin key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already in use"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public valuePublishedByPlugin(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/g/g/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
