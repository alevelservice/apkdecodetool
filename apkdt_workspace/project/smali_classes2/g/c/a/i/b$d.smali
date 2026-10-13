.class final Lg/c/a/i/b$d;
.super Ljava/lang/Object;
.source "Schedulers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/a/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# static fields
.field static final a:Lg/c/a/b/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg/c/a/f/g/c;

    invoke-direct {v0}, Lg/c/a/f/g/c;-><init>()V

    sput-object v0, Lg/c/a/i/b$d;->a:Lg/c/a/b/g;

    return-void
.end method
