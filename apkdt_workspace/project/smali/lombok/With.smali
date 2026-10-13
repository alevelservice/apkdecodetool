.class public interface abstract annotation Llombok/With;
.super Ljava/lang/Object;
.source "With.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Llombok/With;
        onMethod = {}
        onParam = {}
        value = .enum Llombok/AccessLevel;->PUBLIC:Llombok/AccessLevel;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llombok/With$AnyAnnotation;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract onMethod()[Llombok/With$AnyAnnotation;
.end method

.method public abstract onParam()[Llombok/With$AnyAnnotation;
.end method

.method public abstract value()Llombok/AccessLevel;
.end method
