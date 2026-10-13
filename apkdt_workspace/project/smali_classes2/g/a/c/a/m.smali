.class public interface abstract Lg/a/c/a/m;
.super Ljava/lang/Object;
.source "PluginRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/a/c/a/m$c;,
        Lg/a/c/a/m$g;,
        Lg/a/c/a/m$f;,
        Lg/a/c/a/m$b;,
        Lg/a/c/a/m$a;,
        Lg/a/c/a/m$e;,
        Lg/a/c/a/m$d;
    }
.end annotation


# virtual methods
.method public abstract hasPlugin(Ljava/lang/String;)Z
.end method

.method public abstract registrarFor(Ljava/lang/String;)Lg/a/c/a/m$d;
.end method

.method public abstract valuePublishedByPlugin(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
